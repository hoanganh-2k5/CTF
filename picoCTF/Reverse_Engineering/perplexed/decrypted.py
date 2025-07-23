flag_encrypt_arr = bytearray(23)

flag_encrypt_arr[0:8] = b'\xE1\xA7\x1E\xF8\x75\x23\x7B\x61'
flag_encrypt_arr[8:15] = b'\xB9\x9D\xFC\x5A\x5B\xDF\x69'    # bi ghi de byte cuoi boi dong 3
flag_encrypt_arr[15:23] = b'\xD2\xFE\x1B\xED\xF4\xED\x67\xF4'

flag_bit = ''

for i in flag_encrypt_arr:
    flag_bit += format(i, '08b')
# for i, j in enumerate(flag_bit):
#     if(i % 7 == 0):
#         print()
#         print(0, end='')
#     print(j, end='')
for i in range(0, len(flag_bit), 8):
    val = flag_bit[i:i + 8]
    for j in val:
        print(j, end='')
    print()