flag = "灩捯䍔䙻ㄶ形楴獟楮獴㌴摟潦弸彥㜰㍢㐸㙽"

decoded = ''
for c in flag:
    code = ord(c)
    decoded += chr((code >> 8) & 0xFF)  # byte cao
    decoded += chr(code & 0xFF)         # byte thấp

print(decoded)
