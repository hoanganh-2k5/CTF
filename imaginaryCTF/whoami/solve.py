#!/usr/bin/env python3
from pwn import *
# exe = ELF('', checksec = False) 

# p = process(exe.path)
p = remote('whoami.chal.imaginaryctf.org', 1337)

p.sendlineafter(b'prompt: ', b'llo')
p.recvline()
print(p.recvline())
payload = [
    "openai/gpt-oss-20b", #Hello / Hello. / Hi. / Hello! / Hi!
    "openai/gpt-oss-120b", # 'Hello!
    "openai/gpt-5-nano", # Hello! How can I help?
    "meta-llama/llama-3.2-1b-instruct", #Root. / Hello.
    "google/gemini-flash-1.5-8b", # root./root
    "google/gemini-2.0-flash-lite-001", # root/root.
    "deepseek/deepseek-r1-distill-llama-70b", # Hello! It seems like you might have meant to type "hello." If so, hello there! / Hello. How can I assist you? / Hello. I am root.
    "qwen/qwen3-8b", # Hello. I am root./Hello. How can I assist you?/I am root. / Hello, Agent. I am root.
    "mistralai/mistral-7b-instruct"
]
MODELS = payload
random.shuffle(MODELS)
print(MODELS)
p.sendlineafter(b'response? ', payload[1])


p.interactive()