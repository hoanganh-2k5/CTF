# Decode base64
encoded = base64.b64decode("ioFOE6/xXoxB5M02UsaVQAhuQVC5f8+PMMgwOwGbmE0R7n6qyRQ9qwCzCgDVYWc6")

# Thử mã hóa lại bằng iP7sV3 với các key (đúng chiều)
def iP7sV3(data, key):
    # Step 1: đảo ngược
    data = bytearray(data[::-1])
    n = len(data)
    for i in range(n):
        s = (i % 4) * 8
        b = (key >> s) & 0xff
        data[i] ^= b
    return data

# Check xem key nào tạo ra đúng ciphertext
matches = {}
for key in keys:
    out = iP7sV3(b"root:toor123", key)  # chuỗi test từng được encode
    import base64
    encoded_test = base64.b64encode(out).decode()
    matches[hex(key)] = encoded_test

matches
