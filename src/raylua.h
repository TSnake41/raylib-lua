#ifndef H_RAYLUA
#define H_RAYLUA

#include <lua.h>

void raylua_boot(lua_State *L, lua_CFunction loadfile);

#endif /* H_RAYLUA */
