CFLAGS := -O2 -s
LDFLAGS := -O2 -s -lm

AR ?= ar
LUA ?= luajit/src/luajit

CFLAGS += -Iluajit/src -Iraylib/src -Iraygui/src
LDFLAGS += -Lluajit/src -Lraylib/src -lraylib

MODULES := raymath rlgl easings gestures physac raygui

ifeq ($(OS),Windows_NT)
	LDFLAGS += -lopengl32 -lgdi32 -lwinmm -static
else ifeq ($(shell uname),Darwin)
	LDFLAGS += -framework CoreVideo -framework IOKit -framework Cocoa -framework GLUT -framework OpenGL
else
	LDFLAGS += -ldl -lX11 -lpthread
endif

BOOT_FILES := src/raylib.lua src/raylua.lua

all: raylua_s raylua_e

%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

all: raylua_s raylua_e luajit raylib

luajit:
	$(MAKE) -C luajit amalg BUILDMODE=static MACOSX_DEPLOYMENT_TARGET=10.13

raylib:
	$(MAKE) CFLAGS="$(CFLAGS)" LDFLAGS="$(LDFLAGS)" -C raylib/src

raylua_s: src/raylua.o src/raylua_s.o
	$(CC) -o $@ $^ $(LDFLAGS) luajit/src/libluajit.a

raylua_e: src/raylua.o src/raylua_e.o src/raylua_builder.o src/lib/miniz.o
	$(CC) -o $@ $^ $(LDFLAGS) luajit/src/libluajit.a

libraylua.a: src/raylua.o
	$(AR) rcu $@ $^

raylua.dll: src/raylua.o
	$(CC) -shared -fPIE -o $@ $^ $(LDFLAGS)

raylua.so: src/raylua.o
	$(CC) -shared -fPIE -o $@ $^ $(LDFLAGS)

src/raylua.o: luajit raylib src/autogen/boot.c src/autogen/bind.c

src/raylua_builder.o: src/autogen/builder.c

src/autogen/boot.c: src/raylib.lua src/raylua.lua
	$(LUA) tools/lua2str.lua $@ raylua_boot_lua $^

src/autogen/bind.c:
	$(LUA) tools/genbind.lua $@ $(MODULES)

src/autogen/builder.c: src/raylua_builder.lua
	$(LUA) tools/lua2str.lua $@ raylua_builder_lua $^

clean:
	rm -rf raylua_s raylua_e src/raylua_e.o src/raylua_s.o src/raylua.o \
		src/raylua_builder.o src/autogen/*.c src/lib/miniz.o
	$(MAKE) -C luajit clean
	$(MAKE) -C raylib/src clean

.PHONY: all src/autogen/bind.c src/autogen/boot.c raylua_s raylua_e luajit raylib clean
