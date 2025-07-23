#!/usr/bin/env python3
from pwn import *
import random
import time

def get_random(length, seed):
    alphabet = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    random.seed(seed)
    s = ""
    for _ in range(length):
        s += random.choice(alphabet)
    return s

def main():
    token_length = 20
    now = int(time.time() * 1000)

    # Bruteforce seed trong khoảng ±500ms
    seed_range = 500
    max_tries_per_connection = 100

    for base_offset in range(-seed_range, seed_range, max_tries_per_connection):
        try:
            print(f"\n[+] Trying offset range {base_offset} to {base_offset + max_tries_per_connection - 1}")
            p = remote('verbal-sleep.picoctf.net', 50001)

            for i in range(max_tries_per_connection):
                seed = now + base_offset + i
                token = get_random(token_length, seed)

                p.recvuntil(b"Enter your guess for the token (or exit):")
                p.sendline(token)
                print(f"[{base_offset + i}] Trying: {token}")

                ans = p.recvline()
                if b'congratulations' in ans:
                    print("[🎉] Success!")
                    print(ans.decode().strip())
                    print(p.recvline().decode().strip())  # flag line
                    return
                else:
                    print(ans.decode().strip())

            p.close()

        except Exception as e:
            print(f"[!] Error: {e}")
            continue

if __name__ == "__main__":
    main()
