# vuln_repl_debug.py  (RUN LOCALLY ONLY)
import socket
import threading
import re
import traceback

FLAG = "CTF{local_sample_flag_for_testing_only}"

def check_pattern(user_input):
    return '"' in user_input or '\'' in user_input or any(str(n) in user_input for n in range(10))

def handle_conn(conn, addr):
    conn.sendall(b"Welcome to vulnerable REPL (local debug)\n")
    try:
        while True:
            conn.sendall(b">> ")
            data = b""
            while not data.endswith(b"\n"):
                chunk = conn.recv(1024)
                if not chunk:
                    return
                data += chunk
            user_input = data.decode('utf-8', errors='ignore').rstrip("\n")
            if len(user_input) == 0:
                continue
            if len(user_input) > 500:
                conn.sendall(b"Too long!\n")
                continue
            if not re.fullmatch(r'([^()]|\(\))*', user_input):
                conn.sendall(b"No function calls with arguments!\n")
                continue
            if check_pattern(user_input):
                conn.sendall(b"Numbers and strings are forbbiden\n")
                continue
            forbidden_keywords = ['eval', 'exec', 'import', 'open']
            forbbiden = False
            for word in forbidden_keywords:
                if word in user_input:
                    forbbiden = True
            if forbbiden:
                conn.sendall(b"Forbbiden keyword\n")
                continue
            try:
                # DEBUG: evaluate and send repr + exception details
                output = eval(user_input, {"__builtins__": None}, {})
                out = repr(output) + "\n"
                conn.sendall(out.encode())
            except Exception as e:
                # send traceback text (helpful for local debugging)
                tb = traceback.format_exc()
                conn.sendall(b"---EXCEPTION---\n")
                conn.sendall(tb.encode())
                conn.sendall(b"---END---\n")
    finally:
        conn.close()

def main(host="0.cloud.chals.io", port=33618):
    print("Starting local vulnerable REPL (debug) on %s:%d" % (host, port))
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.bind((host, port))
    s.listen(5)
    try:
        while True:
            conn, addr = s.accept()
            t = threading.Thread(target=handle_conn, args=(conn, addr), daemon=True)
            t.start()
    finally:
        s.close()

if __name__ == "__main__":
    # write a local flag file for your experiments
    with open("flag.txt", "w") as f:
        f.write(FLAG + "\n")
    main()
