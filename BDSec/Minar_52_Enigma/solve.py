v21 = 0x1B69081F0E736C4F
v23 = 0x6F707E090B5646B2
v26 = 842348849
v27 = 1261904656

# Tạo mảng byte từ v21 + v23 → đủ 16 byte
data_bytes = v21.to_bytes(8, 'little') + v23.to_bytes(8, 'little')  # 16 bytes

# v26 và v27 dạng byte
v26_bytes = v26.to_bytes(4, 'little')  # 0x81 0x32 0x31 0x32
v27_bytes = v27.to_bytes(8, 'little')  # mở rộng lên 8 bytes

v25 = [0] * 20
v25[0] = ord('B')

for i in range(1, 20):
    a = data_bytes[i] ^ 0xCC
    b = v26_bytes[i & 3]

    div1 = i // 5
    div2 = div1 & ~3
    index = i - (div1 + div2)

    if not (0 <= index < len(v27_bytes)):
        raise Exception(f"Invalid index = {index} at i = {i}")

    c = v27_bytes[index]
    v25[i] = (a - b - c) & 0xFF

# In ra flag
flag = ''.join(chr(c) if 32 <= c < 127 else '.' for c in v25)
print("Flag:", flag)
