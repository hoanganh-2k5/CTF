#!/usr/bin/env python3
# auto_combo_bruteforce.py
# Yêu cầu: pip3 install pwntools
# Chạy: python3 auto_combo_bruteforce.py

import os, time, sys, binascii
from pwn import remote

HOST = "0.cloud.chals.io"
PORT = 33121

# cấu hình
TARGETS = ["PATH","HOME","PWD"]     # biến sẽ gọi protect trên đó
MAX_PROTECT = 200                  # số lần protect tối đa (tăng nếu cần, cẩn thận)
TRY_COMBOS = False                  # nếu True sẽ thử combo (a,b) nhỏ; cẩn thận về rate
COMBO_LIMIT = 30                    # nếu TRY_COMBOS True, a,b sẽ chạy 0..COMBO_LIMIT
NAMES_TO_PRINT = [
  "FLAG","CTF_FLAG","ENC","SECRET","LEAK","TOKEN","API_KEY","AUTH",
  "PASSWORD","KEY","DATA","PATH","HOME","PWD","USER","HOSTNAME","TERM"
]
MARKERS = [b"CTF{", b"FLAG{", b"flag{"]

SLEEP_BETWEEN = 0.03   # pause giữa các kết nối (throttle)
TIMEOUT = 6

# tạo folder logs
LOGDIR = "logs"
os.makedirs(LOGDIR, exist_ok=True)

def recv_prompt(r, timeout=0.8):
    try:
        r.recvuntil(b"> ", timeout=timeout)
    except:
        pass

def do_protects_and_print(seq_protects):
    """
    seq_protects: list of tuples (varname, n_times) e.g. [("PATH",3), ("HOME",2)]
    returns list of tuples (cmd, raw_line_bytes)
    """
    out = []
    try:
        r = remote(HOST, PORT, timeout=TIMEOUT)
    except Exception as e:
        return [("ERR_CONNECT", str(e).encode())]
    recv_prompt(r)
    # execute protects
    for var, times in seq_protects:
        for i in range(times):
            cmd = f"protect {var}"
            r.sendline(cmd.encode())
            try:
                l = r.recvline(timeout=0.6) or b""
            except:
                l = b""
            out.append((cmd.encode(), l.rstrip(b"\r\n")))
            recv_prompt(r, timeout=0.05)
    # print names
    for nm in NAMES_TO_PRINT:
        cmd = f"print {nm}"
        r.sendline(cmd.encode())
        try:
            line = r.recvline(timeout=0.9) or b""
        except:
            line = b""
        out.append((cmd.encode(), line.rstrip(b"\r\n")))
        recv_prompt(r, timeout=0.03)
    try:
        r.close()
    except:
        pass
    return out

def save_log(prefix, seq_protects, out):
    # filename includes prefix + timestamp
    t = int(time.time())
    fname = os.path.join(LOGDIR, f"{prefix}_{t}.log")
    with open(fname, "wb") as f:
        f.write(b"# seq_protects: " + repr(seq_protects).encode() + b"\n")
        for cmd, line in out:
            f.write(cmd + b" -> " + line + b"\n")
    return fname

def hex_of_value(line):
    # line is bytes like b'PATH=....' or other
    if b"=" in line:
        val = line.split(b"=",1)[1]
    else:
        val = line
    return binascii.hexlify(val).decode()

def brute_shifts(val):
    """Trả về list (shift,decoded) nếu decoded chứa marker và tỷ lệ printable đủ"""
    found = []
    if not val:
        return found
    for shift in range(256):
        dec = bytes(((b - shift) & 0xff) for b in val)
        if any(m in dec for m in MARKERS):
            printable = sum(1 for c in dec if 32 <= c <= 126)
            if printable / max(1,len(dec)) > 0.25:
                found.append((shift, dec))
    return found

def analyze_and_log(prefix, seq_protects, out):
    fname = save_log(prefix, seq_protects, out)
    # scan for interesting lines
    for cmd, line in out:
        # skip empty and normal "No such environment variable"
        if not line: 
            continue
        if b"No such environment variable" in line:
            continue
        # print to console
        print(f"[LOG:{fname}] {cmd.decode(errors='ignore')} -> {line!r}")
        # extract value part for brute
        if b"=" in line:
            val = line.split(b"=",1)[1]
        else:
            val = line
        hexv = binascii.hexlify(val).decode()
        print(f"   hex: {hexv}")
        hits = brute_shifts(val)
        if hits:
            print("   >>> FOUND candidate(s):")
            with open("candidates.log","ab") as cf:
                cf.write(b"# from " + fname.encode() + b"\n")
            for shift, dec in hits:
                s = dec.decode(errors='replace')
                print(f"      shift={shift} -> {s!r}")
                with open("candidates.log","ab") as cf:
                    cf.write(f"shift={shift} dec=".encode()+dec+b"\n")
            print("   -> stopping script (candidate found).")
            return True
    return False

def main_loop():
    # single-target sequential mode
    for target in TARGETS:
        print(f"== Trying target {target} protect x0..{MAX_PROTECT} ==")
        for t in range(0, MAX_PROTECT+1):
            seq = [(target, t)]
            out = do_protects_and_print(seq)
            stop = analyze_and_log(f"{target}x{t}", seq, out)
            if stop:
                return
            # polite sleep
            time.sleep(SLEEP_BETWEEN)
    # optional combos
    if TRY_COMBOS:
        print("== Trying combos (PATH a times, HOME b times) ==")
        for a in range(0, COMBO_LIMIT+1):
            for b in range(0, COMBO_LIMIT+1):
                seq = [("PATH", a), ("HOME", b)]
                out = do_protects_and_print(seq)
                stop = analyze_and_log(f"combo_p{a}_h{b}", seq, out)
                if stop:
                    return
                time.sleep(SLEEP_BETWEEN)

if __name__ == "__main__":
    try:
        main_loop()
    except KeyboardInterrupt:
        print("Interrupted by user.")
        sys.exit(0)
