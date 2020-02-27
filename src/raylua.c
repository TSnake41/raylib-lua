#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

#include <raylib.h>
#include "autogen/bind.c"
#include "autogen/boot.c"

extern const char *raylua_boot_str;

void raylua_boot(lua_State *L, lua_CFunction loadfile)
{
  lua_newtable(L);

  if (loadfile) {
    lua_pushstring(L, "loadfile");
    lua_pushcfunction(L, loadfile);

    lua_settable(L, -3);
  }

  lua_pushstring(L, "bind_entries");
  lua_pushlightuserdata(L, raylua_entries);

  lua_settable(L, -3);

  lua_setglobal(L, "raylua");

  if (luaL_dostring(L, raylua_boot_lua))
    fputs(luaL_checkstring(L, -1), stderr);
}
