--[[
  Saphire-based build system for raylib-lua
  Copyright (C) 2021 Astie Teddy

  Permission to use, copy, modify, and/or distribute this software for any
  purpose with or without fee is hereby granted, provided that the above
  copyright notice and this permission notice appear in all copies.

  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
  OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
  CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
]]

local saphire = require "saphire"
local c = require "saphire-c"
local Future = require "saphire-future"
local los = require "los"

local cc = os.getenv "CC" or "cc"
local ar = os.getenv "AR" or "ar"
local windres = os.getenv "WINDRES" or "windres"

-- TODO: Use current lua interpreter
local lua = os.getenv "LUA"
local needs_luajit_built = not (os.getenv "LUA")

local cflags = os.getenv "CFLAGS" or "-O2 -s"
local ldflags = os.getenv "LDFLAGS" or "-O2 -s -lm"
local ldflags_r = os.getenv "LDFLAGS_R" or ""

local modules = "raymath rlgl gestures physac raygui rcamera"
local graphics = os.getenv "GRAPHICS" or "GRAPHICS_API_OPENGL_43"

cflags = cflags .. " -Iluajit/src -Iraygui/src -Iphysac/src -Iraylib/src".. " -D" .. graphics

local raylua_so_path = "raylua.so" -- assume unix-like by default
local so_ldflags = ldflags

if los.type() == "linux" then
  ldflags = ldflags .. " -ldl -pthread"
  cflags = cflags .. " -fPIC"
  so_ldflags = ldflags .. " -llua5.1"
  lua = lua or "luajit/src/luajit"
elseif los.type() == "win32" then
  ldflags = ldflags .. " -lopengl32 -lgdi32 -lwinmm -static "
  so_ldflags = ldflags .. " -llua5.1.dll"
  raylua_so_path = "raylua.dll"
  ldflags_r = ldflags_r .. "-mwindows"
  lua = lua or "luajit\\src\\luajit"
end

local libluajit
if saphire.targets.clean then
  libluajit = {
    command = "make -C luajit clean",
    name = "LuaJIT"
  }
else
  libluajit = {
    command = string.format("make -C luajit amalg CC=%s BUILDMODE=static MACOSX_DEPLOYMENT_TARGET=10.13", cc),
    name = "LuaJIT"
  }
end
saphire.do_single(libluajit)
libluajit[1] = "luajit/src/libluajit.a"

local libraylib = Future "raylib/src/libraylib.a"
saphire.do_subdir("raylib/src", false, "build/buildRaylib.lua", libraylib)

local function lua2c(files, output, name)
  if saphire.targets.clean then
    return string.format("rm -f %s", output)
  else
    return string.format("%s tools/lua2str.lua %s %s %s", lua, output, name, table.concat(files, " "))
  end
end

local function genbind(output, modules)
  if saphire.targets.clean then
    return string.format("rm -f %s", output)
  else
    return string.format("%s tools/genbind.lua src/autogen/bind.c %s", lua, modules)
  end
end

local raylua_src = {
  c.src("src/raylua.c", function ()
    -- Generate bind.c and boot.c
    if needs_luajit_built then
      -- LuaJIT needs to be built
      libluajit:wait()
    end

    saphire.do_multi({
      {
        command = lua2c(
          { "src/raylib.lua", "src/compat.lua", "src/raylua.lua" },
          "src/autogen/boot.c",
          "raylua_boot_lua"
        ),
        name = "boot.c"
      },
      {
        command = genbind("src/autogen/bind.c", modules),
        name = "bind.c"
      }
    }, true)
  end)
}
local raylua_obj = c.compile(raylua_src, cflags .. " -D" .. graphics, "raylua", cc)

local libraylua = c.lib("libraylua.a", raylua_obj, "raylua", ar)

local raylua_s_src = {
  "src/raylua_s.c"
}
local raylua_s_objs = c.compile(raylua_s_src, cflags, "raylua_s", cc)

local raylua_e_src = {
  c.src("src/raylua_builder.c", function ()
    saphire.do_single(lua2c({ "src/raylua_builder.lua" }, "src/autogen/builder.c", "raylua_builder_lua"), true)
  end),
  "src/raylua_e.c",
  "src/lib/miniz.c",
  "src/raylua_self.c",
}
local raylua_e_objs = c.compile(raylua_e_src, cflags, "raylua_e", cc)

local icon
if los.type() == "win32" then
  icon = c.res("src/res/icon.rc", { "src/res/icon.ico" }, "icon", windres)
end

local raylua_s = c.link("raylua_s",
  saphire.merge(raylua_s_objs, { libraylua, libraylib, libluajit, icon }),
  ldflags,
  false,
  "raylua_s",
  cc
)

local raylua_e = c.link("raylua_e",
  saphire.merge(raylua_e_objs, { libraylua, libraylib, libluajit, icon }),
  ldflags,
  false,
  "raylua_e",
  cc
)

local raylua_r = c.link("raylua_r",
  saphire.merge(raylua_e_objs, { libraylua, libraylib, libluajit, icon }),
  ldflags .. " " .. ldflags_r,
  false,
  "raylua_r",
  cc
)

local raylua_so = c.link(raylua_so_path,
  saphire.merge(raylua_obj, { libraylib }),
  so_ldflags,
  true,
  raylua_so_path,
  cc
)
