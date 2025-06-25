#!/bin/sh
socat TCP-LISTEN:13337,reuseaddr,fork EXEC:./pwn4,stderr