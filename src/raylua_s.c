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

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "raylua.h"

#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

int main(int argc, const char **argv)
{
  lua_State *L = luaL_newstate();

  if (L == NULL) {
    puts("RAYLUA: Unable to initialize Lua.");
    return 0;
  }

  luaL_openlibs(L);
  lua_newtable(L);

  int i = 0;
  while (argc != i) {
    lua_pushstring(L, argv[i]);
    lua_rawseti(L, -2, i);

    i++;
  }

  lua_setglobal(L, "arg");

  raylua_boot(L, NULL, NULL, true);
  lua_close(L);
  return 0;
}
