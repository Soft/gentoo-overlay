PREFIX := /usr
MANPREFIX := /usr/share/man

LD := $(CC)
LDFLAGS := -lxcb $(LDFLAGS)
CFLAGS := -std=c99 $(CFLAGS)
