
.c.o:
	$(CC) -std=c99 $(CFLAGS) -c -o $@ $<

tmenu: main.o terminal.o textbuffer.o buffer.o menu.o util.o
	$(CC) $(CFLAGS) -o $@ $^

