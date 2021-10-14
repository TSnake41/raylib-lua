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
local los = require "los"

local cc = os.getenv "CC" or "cc"
local ar = os.getenv "AR" or "ar"
local windres = os.getenv "WINDRES" or "windres"

-- TODO: Use current lua interpreter
local lua = "luajit"--os.getenv "LUA" or "luajit\\src\\luajit"
local lua_ready = os.getenv "LUA" or false

local cflags = os.getenv "CFLAGS" or "-O2 -s"
local ldflags = os.getenv "LDFLAGS" or "-O2 -s -lm"

local windres = os.getenv "WINDRES" or "windres"

local modules = "raymath rlgl easings gestures physac raygui"

cflags = cflags .. " -Iluajit/src -Iraygui/src -Iraylib/src"
ldflags = ldflags .. " luajit/src/libluajit.a raylib/src/libraylib.a luajit/src/libluajit.a"

local exe_ldflags = ""

if los.type() == "linux" then
  ldflags = ldflags .. " -ldl -pthread"
elseif los.type() == "win32" then
  ldflags = ldflags .. " -lopengl32 -lgdi32 -lwinmm -static "
  exe_ldflags = exe_ldflags .. "src/res/icon.res"
end

local function build_c(src, obj, name, flags)
  if saphire.targets.clean then
    return {
      command = "rm -f " .. obj,
      name = name
    }
  end
  
  return {
    command = string.format("%s -c -o %s %s %s %s", cc, obj, src, flags or "", cflags),
    name = name,
    display = obj
  }
end

local function build_a(objs, lib, name)
  if saphire.targets.clean then
    return {
      command = "rm -f " .. lib,
      name = name
    }
  end

  return {
    command = string.format("%s rcs %s %s", ar, lib, table.concat(objs, " ")),
    name = name
  }
end

local function build_e(files, output, name, flags)
  if saphire.targets.clean then
    return {
      command = "rm -f " .. output,
      name = name
    }
  end

  return {
    command = string.format("%s -o %s %s %s %s %s",
      cc, output, table.concat(files, " "), flags or "", ldflags, exe_ldflags),
    name = name,
    display = string.format("%s -o %s", cc, output)
  }
end

local function build_res(src, output, name)
  if saphire.targets.clean then
    return {
      command = "rm -f " .. output,
      name = name
    }
  end

  return {
    command = string.format("%s %s -O coff %s", windres, src, output),
    name = name
  }
end

local function lua2c(files, output, name, dname)
  --while not lua_ready do
  --  coroutine.yield()
  --end
  if saphire.targets.clean then
    return {
      command = "rm -f " .. output,
      name = dname
    }
  end

  return {
    command = string.format("%s tools/lua2str.lua %s %s %s", lua, output, name, table.concat(files, " ")),
    name = dname
  }
end

saphire.do_multi({
  function () -- LuaJIT
    -- TODO: Improve LuaJIT building
    --saphire.do_subdir("luajit", true, "build/buildLuaJIT.lua")

    if saphire.targets.clean then
      saphire.do_single({
        command = "make -C luajit clean",
        name = "LuaJIT"
      }, true)
    else
      saphire.do_single({
        command = string.format("make -C luajit amalg CC=%s BUILDMODE=static MACOSX_DEPLOYMENT_TARGET=10.13", cc),
        name = "LuaJIT"
      }, true)
    end

    lua_ready = true
  end,
  function () -- Raylib
    saphire.do_subdir("raylib/src", true, "build/buildRaylib.lua")
  end,
  function () -- libraylua.a
    saphire.do_single(lua2c(
        { "src/raylib.lua", "src/compat.lua", "src/raylua.lua" },
        "src/autogen/boot.c",
        "raylua_boot_lua",
        "libraylua.a"
      ), true)

    if saphire.targets.clean then
      saphire.do_single({
        command = "rm -f src/autogen/bind.c",
        name = "libraylua.a"
      }, true)
    else
      saphire.do_single({
        command = string.format("%s tools/genbind.lua src/autogen/bind.c %s", lua, modules),
        name = "libraylua.a"
      }, true)
    end

    saphire.do_single(build_c("src/raylua.c", "src/raylua.o", "libraylua.a"), true)
    saphire.do_single(build_a({ "src/raylua.o" }, "libraylua.a", "libraylua.a"), true)
  end,
  function () -- src/raylua_builder.o
    saphire.do_single(lua2c({ "src/raylua_builder.lua" }, "src/autogen/builder.c", "raylua_builder_lua", "raylua_e"), true)
    saphire.do_single(build_c("src/raylua_builder.c", "src/raylua_builder.o", "raylua_e"), true)
  end,
  function () -- Ressources
    if los.type() == "win32" then
      saphire.do_single(build_res("src/res/icon.rc", "src/res/icon.res", "icon"), true)
    end
  end,
  function ()
    local entries = {
      { "src/raylua_s.o", "src/raylua_s.c" },
      { "src/raylua_e.o", "src/raylua_e.c" },
      { "src/lib/miniz.o", "src/lib/miniz.c" },
      { "src/raylua_self.o", "src/raylua_self.c" }
    }

    saphire.do_multi(saphire.map(entries, function(entry)
      return build_c(entry[2], entry[1], "raylua")
    end), true)
  end
}, true)

saphire.do_multi({
  -- raylua_s
  build_e({ "src/raylua_s.o", "libraylua.a" }, "raylua_s", "raylua_s"),
  -- raylua_e
  build_e({ 
    "src/raylua_e.o",
    "src/raylua_self.o",
    "src/raylua_builder.o",
    "src/lib/miniz.o",
    "libraylua.a"
  }, "raylua_e", "raylua_e")
}, true)
