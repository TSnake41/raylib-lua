/*
  Copyright (C) 2020 Astie Teddy

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
*/

#include <stdbool.h>

#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

#include <raylib.h>
#include <rlgl.h>

#include <raymath.h>
#include <rgestures.h>
#include <rcamera.h>

#define RAYGUI_IMPLEMENTATION
#define RAYGUIAPI static
#include <raygui.h>

#define PHYSAC_IMPLEMENTATION
#define PHYSACDEF static
#include <physac.h>

#include "autogen/bind.c"
#include "autogen/boot.c"

extern const char *raylua_boot_str;

#ifdef WIN32
__declspec(dllexport)
#endif
void raylua_boot(lua_State *L, lua_CFunction loadfile, lua_CFunction listfiles,
  bool repl)
{
  lua_newtable(L);

  if (loadfile) {
    lua_pushstring(L, "loadfile");
    lua_pushcfunction(L, loadfile);
    lua_settable(L, -3);
  }

  if (listfiles) {
    lua_pushstring(L, "listfiles");
    lua_pushcfunction(L, listfiles);
    lua_settable(L, -3);
  }

  lua_pushstring(L, "bind_entries");
  lua_pushlightuserdata(L, raylua_entries);
  lua_settable(L, -3);

  lua_pushstring(L, "isrepl");
  lua_pushboolean(L, repl);
  lua_settable(L, -3);

  lua_pushstring(L, "raylib_version");
  lua_pushstring(L, RAYLIB_VERSION);
  lua_settable(L, -3);

  lua_setglobal(L, "raylua");

  if (luaL_dostring(L, raylua_boot_lua)) {
    fputs(luaL_checkstring(L, -1), stderr);
    fputc('\n', stderr);
  }
}

#ifdef WIN32
__declspec(dllexport)
#endif
int luaopen_raylua(lua_State *L)
{
  raylua_boot(L, NULL, NULL, false);

  lua_getglobal(L, "rl");
  lua_getglobal(L, "raylua");
  return 2;
}
