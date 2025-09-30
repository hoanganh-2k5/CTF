res = 0x246
s = "picoCTF_a3112"

for i in range(1, 12):
    res += (ord(s[i]) - ord(s[i - 1])) + (ord(s[i + 1]) - ord(s[i]))

print(hex(res))
