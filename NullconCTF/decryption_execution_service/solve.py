#!/usr/bin/env python3
from pwn import *
import os, json

BLOCK = 16
context.log_level = 'info'

# ---------------- Oracle ----------------
def oracle_ok(ct: bytes) -> bool:
    p = remote("52.59.124.14", 5102)
    p.recvuntil(b"input cipher")
    p.sendline(ct.hex().encode())
    resp = p.recvline(timeout=3).decode(errors='ignore').strip()
    p.close()
    return not resp.startswith("invalid padding")

# ---------------- Helper ----------------
def pkcs7_pad(data: bytes, block: int = BLOCK) -> bytes:
    padlen = block - (len(data) % block)
    if padlen == 0: padlen = block
    return data + bytes([padlen])*padlen

def recover_intermediate(C: bytes, block_idx: int) -> bytes:
    V = bytearray(os.urandom(BLOCK))
    while oracle_ok(bytes(V)+C):  # tránh baseline hợp lệ
        V = bytearray(os.urandom(BLOCK))
    I = bytearray(BLOCK)
    prog = log.progress(f"Recovering block {block_idx}")
    for pad in range(1, BLOCK+1):
        idx = BLOCK-pad
        V2 = bytearray(V)
        for j in range(BLOCK-1, idx, -1):
            V2[j] ^= I[j] ^ pad
        for guess in range(256):
            if guess == V[idx]:
                continue
            V2[idx] = guess
            if oracle_ok(bytes(V2)+C):
                I[idx] = guess ^ pad ^ V[idx]
                V = V2
                break
        prog.status(f"bytes recovered: {BLOCK-pad+1}/{BLOCK}")
    prog.success("done")
    return bytes(I)

def build_cipher(P: bytes) -> bytes:
    blocks = [P[i:i+BLOCK] for i in range(0, len(P), BLOCK)]
    n = len(blocks)
    C = [b'']*n
    C[n-1] = os.urandom(BLOCK)
    I = recover_intermediate(C[n-1], n-1)
    for i in range(n-1, 0, -1):
        C[i-1] = bytes(x^y for x,y in zip(blocks[i], I))
        I = recover_intermediate(C[i-1], i-1)
    IV = bytes(x^y for x,y in zip(blocks[0], I))
    return IV + b''.join(C)

# ---------------- Main ----------------
payload = {"command":"print(open('flag.txt').read())"}
P = pkcs7_pad(json.dumps(payload).encode())
ct = build_cipher(P)

# gửi payload thật để lấy flag
p = remote("52.59.124.14", 5102)
p.recvuntil(b"input cipher")
p.sendline(ct.hex().encode())
print(p.recvline(timeout=3).decode(errors='ignore'))
p.close()
