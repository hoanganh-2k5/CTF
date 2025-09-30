v2 = 0xBEEF
for i in range(100):
    v2 = (26125 * v2 - 3233) & 0x7fffffffffffffff
print(v2, hex(v2))

buffer = "CP_TLUAFED"
v2 = 101

for j in range(len(buffer)):
    v2 += (j + 1) * ord(buffer[j])  # ord() lấy mã ASCII của ký tự

print(v2)
