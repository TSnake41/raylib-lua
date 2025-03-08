rockspec_format = "3.0"

package = "raylib-lua"
version = "4.5-1" -- raylib version
source = {
    url = "https://github.com/TSnake41/raylib-lua",
    tag = "v4.5a",
}
description = {
    summary = "Lua bindings for Raylib",
    detailed = [[
        raylib-lua is a Lua binding for Raylib, a simple and easy-to-use library
        for game development. This binding allows you to use Raylib in Lua.
    ]],
    homepage = "https://github.com/TSnake41/raylib-lua",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1",

}

build_dependencies = {
    -- Build tools required
    -- "luajit >= 2.0",  -- Not needed, building from submodule
    -- "raylib >= 4.0",  -- Not needed, building from submodule
}


build = {
    type = "command",
    build_command = [[
        git submodule update --init --recursive &&
        $(MAKE) -f Makefile.luarocks all
    ]],
    install_command = [[
        mkdir -p "$(BINDIR)" &&
        mkdir -p "$(LIBDIR)" &&
        mkdir -p "$(LUADIR)/raylib" &&
        cp raylua_s "$(BINDIR)/raylua" &&
        cp raylua_e "$(BINDIR)/raylua_e" &&
        cp raylua_r "$(BINDIR)/raylua_r" &&
        cp libraylua.a "$(LIBDIR)/" &&
        cp src/*.lua "$(LUADIR)/raylib/" || true
    ]],
    variables = {
        CFLAGS = "$(CFLAGS)",
        LIBFLAG = "$(LIBFLAG)",
        LUA_LIBDIR = "$(LUA_LIBDIR)",
        LUA_BINDIR = "$(LUA_BINDIR)",
        LUA_INCDIR = "$(LUA_INCDIR)",
        LUA = "$(LUA)",
        PLATFORM = "PLATFORM_DESKTOP",
        GRAPHICS = "GRAPHICS_API_OPENGL_33",
        MACOSX_DEPLOYMENT_TARGET = "10.13",
        INST_PREFIX = "$(PREFIX)",
        INST_BINDIR = "$(BINDIR)",
        INST_LIBDIR = "$(LIBDIR)",
        INST_LUADIR = "$(LUADIR)",
        INST_CONFDIR = "$(CONFDIR)"
    }
}
