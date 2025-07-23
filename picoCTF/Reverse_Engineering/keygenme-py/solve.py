import hashlib

username_trial = b"ANDERSON"

# Giả sử đây là phần tĩnh của key
key_part_static1_trial = "picoCTF{"  # bạn cần chỉnh lại nếu khác

# Băm username
digest = hashlib.sha256(username_trial).hexdigest()

# Lấy các ký tự động
dynamic_part = digest[4] + digest[5] + digest[3] + digest[6] + digest[2] + digest[7] + digest[1] + digest[8]

# Kết hợp thành key đầy đủ
key = key_part_static1_trial + dynamic_part + "}"  # thêm dấu } nếu key dạng picoCTF{...}

print("Generated key:", key)