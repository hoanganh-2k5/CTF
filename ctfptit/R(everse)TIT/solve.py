import hashlib
import itertools

target = "156cc4c77e3bf1dcb387b189b56309dde6ef6220"  # SHA1 đủ 40 hex
charset = "abcdefghijklmnopqrstuvwxyz0123456789_"
length = 3

for cand in itertools.product(charset, repeat=length):
    s = ''.join(cand)
    if hashlib.sha1(s.encode()).hexdigest() == target:
        print("FOUND:", s)
        break
