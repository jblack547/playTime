CC=gcc
CFLAGS=-I.

buffer: buffer.c main.c
	$(CC) -o buffer buffer.c main.c $(CFLAGS)
