#!/usr/bin/env python3
# exploit_ld.py
# Usage: python3 exploit_ld.py ./chall
# This script automatically sets LD_LIBRARY_PATH to current dir before launching the binary.

import sys
import subprocess
import time
import re
import binascii
import os

if len(sys.argv) != 2:
    print("Usage: python3 exploit_ld.py ./chall")
    sys.exit(1)

BINARY = sys.argv[1]
BASEDIR = os.path.dirname(os.path.abspath(BINARY)) or "."

# regexes
re_wrapped = re.compile(r"Wrapped key:\s*([0-9a-fA-F]+)")
re_nonce   = re.compile(r"Nonce:\s*([0-9a-fA-F]+)")
re_ct      = re.compile(r"Ciphertext:\s*([0-9a-fA-F]+)")

def start_process():
    env = os.environ.copy()
    # ensure LD_LIBRARY_PATH includes directory with libcrypto.so.1.1
    env["LD_LIBRARY_PATH"] = BASEDIR + (":" + env.get("LD_LIBRARY_PATH", "") if env.get("LD_LIBRARY_PATH") else "")
    p = subprocess.Popen([BINARY], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, env=env)
    return p

def read_initial(p, timeout=1.0):
    out = b""
    start = time.time()
    while time.time() - start < timeout:
        try:
            chunk = p.stdout.read(4096)
            if not chunk:
                break
            out += chunk
            if b"Ciphertext:" in out:
                break
        except Exception:
            break
    return out.decode(errors="ignore")

def do_encrypt_zero_block(p, ct_len):
    zero_hex = "00" * ct_len
    try:
        p.stdin.write((zero_hex + "\n").encode())
        p.stdin.flush()
        time.sleep(0.01)
        p.stdin.write(("1\n").encode())
        p.stdin.flush()
    except BrokenPipeError:
        return ""
    time.sleep(0.02)
    out_chunk = b""
    for _ in range(50):
        chunk = p.stdout.read(4096)
        if not chunk:
            break
        out_chunk += chunk
        if b"Ciphertext:" in out_chunk:
            break
    return out_chunk.decode(errors="ignore")

# start
p = start_process()
time.sleep(0.05)
initial = read_initial(p, timeout=0.5)
print("=== initial dump_flag output ===")
print(initial)

m_w = re_wrapped.search(initial)
m_n = re_nonce.search(initial)
m_c = re_ct.search(initial)

if not (m_w and m_n and m_c):
    print("Failed to parse initial dump_flag output. Exiting.")
    p.kill()
    sys.exit(1)

wrapped_flag_hex = m_w.group(1)
nonce_flag_hex   = m_n.group(1)
ct_flag_hex      = m_c.group(1)

print("Wrapped key (flag):", wrapped_flag_hex)
print("Nonce (flag):", nonce_flag_hex)
print("Ciphertext (flag):", ct_flag_hex)

flag_ct = binascii.unhexlify(ct_flag_hex)
target_wrapped = wrapped_flag_hex.lower()
ct_len = len(flag_ct)

print("\nStarting loop to find matching wrapped_key (this may take many iterations)...")
max_iter = 200000
found = False
for i in range(max_iter):
    s = do_encrypt_zero_block(p, ct_len)
    if not s:
        print("No output from process; maybe exited.")
        break
    m_w2 = re_wrapped.search(s)
    m_c2 = re_ct.search(s)
    if not (m_w2 and m_c2):
        continue
    wk = m_w2.group(1).lower()
    ct = m_c2.group(1)
    if wk == target_wrapped:
        print("\n[+] Found matching wrapped_key at iteration", i)
        print("Wrapped key:", wk)
        print("Ciphertext (zero-input):", ct)
        keystream = binascii.unhexlify(ct)
        if len(keystream) != len(flag_ct):
            print("Length mismatch; skipping")
            continue
        plaintext = bytes([a ^ b for a,b in zip(flag_ct, keystream)])
        print("\nRecovered plaintext (may include newline):")
        try:
            print(plaintext.decode())
        except:
            print(binascii.hexlify(plaintext))
        found = True
        break
    if (i+1) % 1000 == 0:
        print("iter", i+1, "still searching...", flush=True)

if not found:
    print("\n[-] Did not find matching wrapped_key within", max_iter, "iterations.")
try:
    p.kill()
except:
    pass
