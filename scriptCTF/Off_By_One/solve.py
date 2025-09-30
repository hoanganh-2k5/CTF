#!/usr/bin/env python3
# try_offbyone.py
# Usage: python3 try_offbyone.py hidden_out.bin
# Creates folder "candidates" with many image attempts (byte-wise, bit-unpacked,
# bit-shifted, byte-shifted). Tries to auto-decode with pyzbar/zbarimg if available.

import sys, os, math, subprocess
from pathlib import Path

try:
    from PIL import Image
    import numpy as np
except Exception as e:
    print("Thiếu thư viện: hãy cài pillow và numpy: sudo apt install python3-pip && pip3 install pillow numpy")
    raise

INFILE = sys.argv[1] if len(sys.argv) > 1 else "hidden_out.bin"
OUTDIR = Path("candidates")
OUTDIR.mkdir(exist_ok=True)

data = open(INFILE, "rb").read()
n_bytes = len(data)
print(f"Đọc {INFILE}: {n_bytes} bytes")

# helper: save a grayscale image from byte array (0-255) with given size
def save_byte_image(byte_array, size, name):
    arr = np.frombuffer(byte_array, dtype=np.uint8)
    need = size * size
    if arr.size < need:
        arr = np.pad(arr, (0, need - arr.size), constant_values=255)  # pad white
    else:
        arr = arr[:need]
    arr = arr.reshape((size, size))
    img = Image.fromarray(arr, mode="L")
    path = OUTDIR / name
    img.save(path)
    return path

# helper: save from bit list (0/1)
def save_bit_image(bit_list, size, name):
    need = size * size
    bits = bit_list[:need] + [1] * max(0, need - len(bit_list))  # pad white (1)
    arr = (np.array(bits, dtype=np.uint8).reshape((size, size)) * 255).astype(np.uint8)
    img = Image.fromarray(arr, mode="L")
    path = OUTDIR / name
    img.save(path)
    return path

# derive candidate sizes: common QR sizes or near sqrt lengths
cand_sizes = [32,48,64,72,96,128,160,192,224,240,256,288,320,384,512]
# add near-square guesses from byte and bit lengths
sq_byte = int(math.isqrt(n_bytes))
if sq_byte > 0:
    for d in range(-4,5):
        v = sq_byte + d
        if v>8:
            cand_sizes.append(v)
n_bits = n_bytes * 8
sq_bit = int(math.isqrt(n_bits))
if sq_bit > 0:
    for d in range(-4,5):
        v = sq_bit + d
        if v>8:
            cand_sizes.append(v)

cand_sizes = sorted(list(set([s for s in cand_sizes if s>8 and s<=2048])))
print("Các kích thước thử:", cand_sizes)

# 1) Byte-wise original
print("Tạo ảnh byte-wise (8-bit grayscale) — original data")
for s in cand_sizes:
    name = f"byte_orig_{s}x{s}.png"
    save_byte_image(data, s, name)

# 2) Byte-shifts: drop first/last/rotate 1..3 bytes
print("Thử byte-shift (bỏ 1 đầu/cuối, rotate)")
for shift in [1,2,3]:
    d1 = data[shift:]
    d2 = data[:-shift] if shift < n_bytes else b""
    # rotate left
    d3 = data[shift:] + data[:shift]
    for s in cand_sizes:
        save_byte_image(d1, s, f"byte_dropfirst_{shift}_{s}x{s}.png")
        save_byte_image(d2, s, f"byte_droplast_{shift}_{s}x{s}.png")
        save_byte_image(d3, s, f"byte_rotate_{shift}_{s}x{s}.png")

# 3) Bit-unpack (MSB-first and LSB-first)
def bits_from_bytes(bs, msb_first=True):
    out = []
    for b in bs:
        if msb_first:
            for i in range(8):
                out.append((b >> (7-i)) & 1)
        else:
            for i in range(8):
                out.append((b >> i) & 1)
    return out

print("Tạo ảnh từ bit-packed (MSB-first và LSB-first) — không shift, và shift 1..7")
for msb in (True, False):
    mode = "msb" if msb else "lsb"
    bits = bits_from_bytes(data, msb_first=msb)

    # no shift
    for s in cand_sizes:
        save_bit_image(bits, s, f"bit_{mode}_no_shift_{s}x{s}.png")

    # drop N bits (off-by-one types) and prepend zero and rotate variations
    for shift in range(1,8):
        # drop first `shift` bits
        b_drop = bits[shift:]
        for s in cand_sizes:
            save_bit_image(b_drop, s, f"bit_{mode}_drop{shift}_{s}x{s}.png")

        # prepend shift zeros
        b_pre = [0]*shift + bits
        for s in cand_sizes:
            save_bit_image(b_pre, s, f"bit_{mode}_prepend0_{shift}_{s}x{s}.png")

        # rotate left by shift bits
        L = len(bits)
        shift_mod = shift % L if L>0 else 0
        b_rot = bits[shift_mod:] + bits[:shift_mod] if L>0 else bits
        for s in cand_sizes:
            save_bit_image(b_rot, s, f"bit_{mode}_rot{shift}_{s}x{s}.png")

print("Tạo ảnh hoàn tất -- tất cả ảnh nằm trong thư mục 'candidates'")

# 4) Tự động thử decode bằng pyzbar hoặc zbarimg (nếu có)
decoded = []
# try pyzbar
try:
    from pyzbar.pyzbar import decode
    print("Thử decode bằng pyzbar...")
    for p in sorted(OUTDIR.glob("*.png")):
        try:
            img = Image.open(p)
            res = decode(img)
            if res:
                for r in res:
                    txt = r.data.decode(errors="replace")
                    print(f"[pyzbar] FOUND in {p}: {txt}")
                    decoded.append((p, txt))
        except Exception:
            pass
except Exception:
    print("pyzbar không có/không dùng được (bỏ qua). Bạn có thể cài: pip3 install pyzbar")

# try zbarimg (system)
if not decoded:
    print("Thử decode bằng zbarimg (nếu cài)...")
    for p in sorted(OUTDIR.glob("*.png")):
        try:
            out = subprocess.run(["zbarimg", str(p)], capture_output=True, text=True, timeout=3)
            if out.returncode == 0 and out.stdout.strip():
                print(f"[zbarimg] FOUND in {p}: {out.stdout.strip()}")
                decoded.append((p, out.stdout.strip()))
        except Exception:
            pass

if decoded:
    print("\n=== KẾT QUẢ TỰ ĐỘNG ===")
    for p, txt in decoded:
        print(p, "->", txt)
else:
    print("Không tìm thấy QR tự động. Hãy mở thư mục 'candidates' và kiểm tra ảnh trông giống QR (pattern vuông).")
    print("Nếu thấy ảnh trông đúng, scan bằng điện thoại hoặc mở file ảnh và gửi lại mình tên file muốn phân tích.")

