# Write up
## YARA?

YARA là công cụ nhận dạng file dựa trên mẫu dùng để tìm malware hoặc các file nghi vấn bằng cách nhận diện các dấu
hiệu đặc trưng. Tất cả được viết trong 1 block rule, 1 file .yar có thể có nhiều rule

**ví dụ:**
```
rule ExampleRule
{
    strings:
        $my_text_string = "text here"
        $my_hex_string = { E2 34 A1 C8 23 FB }

    condition:
        $my_text_string or $my_hex_string
}
```

## Solve
trong bài này ta sẽ được làm quen với YARA qua file .txt

đọc gợi ý thì ta sẽ phải làm việc với cả file nén (packed file) và file giải nén (unpacked file)
### file nén
sử dụng lệnh strings để kiểm tra thông tin của file .exe
`strings suspicious.exe`
ta nghi ngờ 1 hàm có tên là `IsDebuggerP` và phần này: `<requestedExecutionLevel level='asInvoker' uiAccess='false' />`

tất cả đều nằm trong file bị nén bởi UPX vì thế ta sẽ thêm điều kiện là tìm chuỗi "UPX" mục đích là tìm các file thực thi đáng ngờ bị nén bởi UPX

ta có rule1
```
rule Rule1
{
    strings:
        $string_00 = "IsDebuggerP" wide ascii
        $string_01 = "asInvoker" wide ascii
        $string_02 = "UPX" wide ascii
    condition:
        all of them
}
```

### file giải nén
tương tự như ở trên ta cũng sẽ thấy hàm `IsDebuggerPresent` và `<requestedExecutionLevel level='asInvoker' uiAccess='false' />`
và 1 hàm nữa có tên là AdjustTokenPrivileges Dùng để thay đổi quyền của process

rule2
```
rule Rule2
{
    strings:
        $string_00 = "IsDebuggerPresent" wide ascii
        $string_01 = "asInvoker" wide ascii
        $string_02 = "AdjustTokenPrivileges" wide ascii
    condition:
        all of them
}
```

ok socat và lấy flag thôi!

## flag
`picoCTF{yara_rul35_r0ckzzz_d31fbfb7}`

## tham khảo thêm YARA:
https://yara.readthedocs.io/en/stable/writingrules.html#text-strings