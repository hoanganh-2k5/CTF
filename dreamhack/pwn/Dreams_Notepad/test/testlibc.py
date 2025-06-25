from pwn import *
import os

leaked_puts = 0x7f1f6acb2be0

libc_dir = './libcs'  
for filename in os.listdir(libc_dir):
    path = os.path.join(libc_dir, filename)
    try:
        libc = ELF(path, checksec=False)
        offset_puts = libc.sym['puts']
        base = leaked_puts - offset_puts
        print(f"[{filename}] puts offset: {hex(offset_puts)} → base: {hex(base)}")
    except Exception as e:
        print(f"[{filename}] Error: {e}")
