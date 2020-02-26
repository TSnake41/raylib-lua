CFLAGS := -O2 -s
LDFLAGS := -O2 -s -lm -lluajit

AR ?= ar
LUA ?= luajit

BOOT_FILES := src/raylib.lua src/raylua.lua

all: raylua_s raylua_e

%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

src/raylua_boot.c: src/raylib.lua src/raylua.lua
	$(LUA) tools/lua2str.lua $@ raylua_boot $^

raylua_s: src/raylua_boot.o src/raylua_s.o
	$(CC) -o $@ $^ $(LDFLAGS)

raylua_e: src/lib/miniz.o src/raylua_boot.o src/raylua_builder.o src/raylua_e.o
	$(CC) -o $@ $^ -lwray $(LDFLAGS)

clean:
	rm -rf raylua_s raylua_e src/raylua_boot.c src/*.o src/lib/miniz.o

.PHONY: raylua_s raylua_e
