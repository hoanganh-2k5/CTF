## memory leak:

use gdb we will see:
name at: 0xffffccb0
age at: 0xffffccc0
flag at: 0xffffccc4

but the maximum character of name is 16 and read function will auto add '\n' byte at the end of payload so we can leak the value of age variable
we can leak the data until null byte (\00) so if we enter age full 8 bytes other null byte we can leak the data of the next address that's mean flag
