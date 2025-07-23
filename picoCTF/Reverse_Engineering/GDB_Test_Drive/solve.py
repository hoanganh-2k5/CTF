encrypt_flag = "A:4@r%uL5b3F88bC05C`Gb0fffe5fdgN"

flag = ""

for i in encrypt_flag:
    i = ord(i)
    if(i > 32 and i != 127):
        c = i + 47
        if(c <= 126):
            flag += chr(c)
        else:
            flag += chr(i - 47)

print("flag: ", flag)