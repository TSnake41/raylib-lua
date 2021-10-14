local saphire = require "saphire"

local cc = os.getenv "CC" or "cc"
local ar = os.getenv "AR" or "ar"

local cflags = os.getenv "CFLAGS" or "-O2 -s"
local ldflags = os.getenv "LDFLAGS" or "-O2 -s -lm"

local include_paths = "-I. -Iexternal/glfw/include -Iexternal/glfw/deps/mingw"

local los = require "los"

local consts = {
  RAYLIB_VERSION = "3.7.0",
  RAYLIB_API_VERSION = "370",
}

local vars = saphire.map({
  { "RAYLIB_LIBTYPE", "STATIC" },
  { "RAYLIB_BUILD_MODE", "RELEASE" },
  { "RAYLIB_LIB_NAME", "raylib" },
  { "RAYLIB_RES_FILE", "./raylib.dll.rc.data" },
  { "PLATFORM", "PLATFORM_DESKTOP" },
  { "GRAPHICS", "GRAPHICS_API_OPENGL_33" },
  { "USE_EXTERNAL_GLFW", "FALSE" },
  { "USE_WAYLAND_DISPLAY", "FALSE" }
}, function (v)
  return { v[1], os.getenv(v[1]) or v[2] }
end)

for i,v in ipairs(vars) do
  vars[v[1]] = v[2]
end

local function build_c(src, obj, flags)
  return {
    command = string.format("%s -fdiagnostics-color=always -c -o %s %s %s %s %s", cc, obj, src, flags or "", cflags, ldflags),
    name = "raylib",
    display = obj
  }
end

local function build_a(objs, lib)
  return {
    command = string.format("%s rcs %s %s", ar, lib, table.concat(objs, " ")),
    name = "raylib",
    lib = lib
  }
end

local function build_e(files, output, flags)
  return {
    command = string.format("%s -fdiagnostics-color=always -o %s %s %s %s", cc, output, table.concat(files, " "), flags or "", ldflags),
    name = "raylib",
    display = output
  }
end

local function build_res(src, output)
  return {
    command = string.format("%s %s -O coff %s", windres, src, output),
    name = "raylib"
  }
end

local objects = {
  -- ["obj.o"] = { src... }
  { "rcore.o", { "rcore.c", "raylib.h", "rlgl.h", "utils.h", "raymath.h", "camera.h", "rgestures.h" } },
  { "rglfw.o", { "rglfw.c", flags = os.getenv "GLFW_OSX" or "" } },
  { "rshapes.o", { "rshapes.c", "raylib.h", "rlgl.h" } },
  { "rtextures.o", { "rtextures.c", "raylib.h", "rlgl.h", "utils.h" } },
  { "rtext.o", { "rtext.c", "raylib.h", "utils.h" } },
  { "utils.o", { "utils.c", "utils.h" } },
  { "rmodels.o", { "rmodels.c", "raylib.h", "rlgl.h", "raymath.h" } },
  { "raudio.o", { "raudio.c", "raylib.h" } }
}

if saphire.targets.clean then
  saphire.do_multi(
    saphire.map(objects, function (obj_info)
      return {
        command = string.format("rm -f %s", obj_info[1])
      }
    end), true)
else
  saphire.do_multi(
    saphire.map(objects, function (obj_info)
      return function()
        local obj, src = unpack(obj_info)
        saphire.do_recipe(src, obj, build_c(src[1], obj,
          table.concat({ "-D" .. vars.PLATFORM, "-D" .. vars.GRAPHICS, include_paths, src.flags }, " ")),
        true)
      end
    end), true)

  saphire.do_single(
    build_a(
      saphire.map(objects, function (obj) return obj[1] end),
      "libraylib.a"),
    true)
end