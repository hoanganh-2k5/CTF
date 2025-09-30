import base64
import urllib.parse

expected = "JTYzJTMwJTZlJTc2JTMzJTcyJTc0JTMxJTZlJTY3JTVmJTY2JTcyJTMwJTZkJTVmJTYyJTYxJTM1JTY1JTVmJTM2JTM0JTVmJTY1JTMzJTMxJTM1JTMyJTYyJTY2JTM0"
decode_bytes = base64.b64decode(expected)
flag = urllib.parse.unquote(decode_bytes.decode())
print(flag)
#  63 30 6e 76 33 72 74 31 6e 67 5f 66 72 30 6d 5f 62 61 35 65 5f 36 34 5f 65 33 31 35 32 62 66 34
# picoCTF{c0nv3rt1ng_fr0m_ba5e_64_e3152bf4}