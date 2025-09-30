import socket

s = socket.socket()
s.connect(("play.scriptsorcerers.xyz", 10125))

while True:
    data = s.recv(1024)  # chỉ đọc 1KB mỗi lần
    if b"scriptCTF" in data:   # kiểm tra nếu xuất hiện flag
        print("Found:", data)
        break
    # không in hoặc xử lý data → effectively "ignore" phần còn lại
