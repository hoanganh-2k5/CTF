#!/usr/bin/env python3
from pwn import *
import time
# exe = ELF('', checksec = False)

# p = process(exe.path)
t1 = int(time.time() * 1000)
p = remote('verbal-sleep.picoctf.net', 50001)
t2 = int(time.time() * 1000)

print(t1, t2, t2 - t1)

# p.interactive()