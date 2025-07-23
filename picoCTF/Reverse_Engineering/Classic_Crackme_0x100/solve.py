def decrypt(ciphertext):
    secret1 = 85
    secret2 = 51
    secret3 = 15
    fix = 97
    input_chars = list(ciphertext)
    length = len(input_chars)

    for _ in range(3):  # Giải ngược từng vòng
        for i in range(length):
            i_mod = i % 255
            random1 = (secret1 & i_mod) + (secret1 & (i_mod >> 1))
            random2 = (random1 & secret2) + (secret2 & (random1 >> 2))
            offset = (random2 & secret3) + (secret3 & (random2 >> 4))

            y = ord(input_chars[i]) - fix
            x = (y - offset + 26) % 26
            input_chars[i] = chr(x + fix)

    return ''.join(input_chars)

ciphertext = "ztqittwtxtieyfrslgtzuxovlfdnbrsnlrvyhhsdxxrfoxnjbl"
plaintext = decrypt(ciphertext)
print(plaintext)