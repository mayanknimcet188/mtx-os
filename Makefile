#usage mk filename
as86 -o bs.o bs.s
bcc -c -ansi $1.c
ld86 -d -o $1 bs.o $1.o /usr/lib/bcc/libc.a
dd if=1 of=IMAGE bs=512 count=1 conv=notrunc
