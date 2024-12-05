local future = arg[1]

local saphire = require "saphire"
local c = require "saphire-c"

local cc = os.getenv "CC" or "cc"
local ar = os.getenv "AR" or "ar"

local cflags = os.getenv "CFLAGS" or "-O2 -s"

local include_paths = "-I. -Iexternal/glfw/include -Iexternal/glfw/deps/mingw"

local los = require "los"

if los.type() == "linux" then
  cflags = cflags .. " -fPIC"
end

local consts = {
  RAYLIB_VERSION = "5.5.0",
  RAYLIB_API_VERSION = "550",
}

local vars = saphire.map({
  { "RAYLIB_LIBTYPE", "STATIC" },
  { "RAYLIB_BUILD_MODE", "RELEASE" },
  { "RAYLIB_LIB_NAME", "raylib" },
  { "RAYLIB_RES_FILE", "./raylib.dll.rc.data" },
  { "PLATFORM", "PLATFORM_DESKTOP" },
  { "GRAPHICS", "GRAPHICS_API_OPENGL_43" },
  { "USE_EXTERNAL_GLFW", "FALSE" },
  { "USE_WAYLAND_DISPLAY", "FALSE" }
}, function (v)
  return { v[1], os.getenv(v[1]) or v[2] }
end)

if vars.USE_WAYLAND_DISPLAY == "TRUE" then
  cflags = cflags .. " -D_GLFW_WAYLAND"
else
  -- Assume "FALSE"
  cflags = cflags .. " -D_GLFW_X11"
end

for i,v in ipairs(vars) do
  vars[v[1]] = v[2]
end

local flags = string.format("%s -D%s -D%s %s", cflags, vars.PLATFORM, vars.GRAPHICS, include_paths)

local src = {
  -- ["obj.o"] = { src... }
  { "rcore.o", { "rcore.c", "raylib.h", "rlgl.h", "utils.h", "raymath.h", "rcamera.h", "rgestures.h" } },
  { "rglfw.o", { "rglfw.c", flags = os.getenv "GLFW_OSX" or "" } },
  { "rshapes.o", { "rshapes.c", "raylib.h", "rlgl.h" } },
  { "rtextures.o", { "rtextures.c", "raylib.h", "rlgl.h", "utils.h" } },
  { "rtext.o", { "rtext.c", "raylib.h", "utils.h" } },
  { "utils.o", { "utils.c", "utils.h" } },
  { "rmodels.o", { "rmodels.c", "raylib.h", "rlgl.h", "raymath.h" } },
  { "raudio.o", { "raudio.c", "raylib.h" } }
}

local objs = c.compile(src, flags, "raylib", cc)
local libraylib = c.lib("libraylib.a", objs, "raylib")

libraylib:wait()
if future then
  future:resolve()
end
