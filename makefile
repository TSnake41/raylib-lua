CFLAGS := -O2 -s
LDFLAGS := -O2 -s -lm

AR ?= ar
LUA ?= luajit/src/luajit

WINDRES ?= windres

CFLAGS += -Iluajit/src -Iraylib/src -Iraygui/src
LDFLAGS += -Lluajit/src -Lraylib/src -lraylib

MODULES := raymath rlgl easings gestures physac raygui

ifeq ($(OS),Windows_NT)
	LDFLAGS += -lopengl32 -lgdi32 -lwinmm -static
	EXTERNAL_FILES := src/res/icon.res
else ifeq ($(shell uname),Darwin)
	LDFLAGS += -framework CoreVideo -framework IOKit -framework Cocoa \
		-framework GLUT -framework OpenGL \
		-Wl,-pagezero_size,10000,-image_base,100000000
	EXTERNAL_FILES :=
else
	LDFLAGS += -ldl -lX11 -lpthread
	EXTERNAL_FILES :=
endif

all: raylua_s raylua_e luajit raylib

%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

luajit:
	$(MAKE) -C luajit amalg CC=$(CC) BUILDMODE=static MACOSX_DEPLOYMENT_TARGET=10.13

raylib:
	$(MAKE) CC=$(CC) CFLAGS="$(CFLAGS)" LDFLAGS="$(LDFLAGS)" -C raylib/src

raylua_s: src/raylua_s.o $(EXTERNAL_FILES) libraylua.a
	$(CC) -o $@ $^ $(LDFLAGS) luajit/src/libluajit.a

raylua_e: src/raylua_e.o src/raylua_self.o src/raylua_builder.o src/lib/miniz.o \
		$(EXTERNAL_FILES) libraylua.a
	$(CC) -o $@ $^ $(LDFLAGS) luajit/src/libluajit.a

src/res/icon.res: src/res/icon.rc
	$(WINDRES) $^ -O coff $@

libraylua.a: src/raylua.o
	$(AR) rcu $@ $^

raylua.dll: src/raylua.o
	$(CC) -shared -fPIE -o $@ $^ $(LDFLAGS) -llua5.1

raylua.so: src/raylua.o
	$(CC) -shared -fPIE -o $@ $^ $(LDFLAGS) -llua5.1

src/raylua.o: luajit raylib src/autogen/boot.c src/autogen/bind.c

src/raylua_builder.o: src/autogen/builder.c

src/autogen/boot.c: src/raylib.lua src/compat.lua src/raylua.lua
	$(LUA) tools/lua2str.lua $@ raylua_boot_lua $^

src/autogen/bind.c:
	$(LUA) tools/genbind.lua $@ $(MODULES)

src/autogen/builder.c: src/raylua_builder.lua
	$(LUA) tools/lua2str.lua $@ raylua_builder_lua $^

clean:
	rm -rf raylua_s raylua_e libraylua.a src/raylua_e.o src/raylua_s.o \
		src/raylua.o src/raylua_self.o src/raylua_builder.o src/autogen/*.c \
		src/lib/miniz.o
	$(MAKE) -C luajit clean
	$(MAKE) -C raylib/src clean

.PHONY: all src/autogen/bind.c src/autogen/boot.c raylua_s raylua_e luajit \
	raylib clean
