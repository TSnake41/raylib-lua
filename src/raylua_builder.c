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
#include <stdint.h>
#include <string.h>

#include <sys/types.h>
#include <sys/stat.h>

#ifdef WIN32
#include "lib/dirent.h"
#define stat _stat
#else
#include <dirent.h>
#endif

#include "lib/miniz.h"

#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

#ifndef RAYLUA_NO_BUILDER
#include "autogen/builder.c"

static void append_file(FILE *dst, FILE *src)
{
  rewind(src);

  size_t count;
  do {
    uint8_t buffer[4096];
    count = fread(buffer, 1, 4096, src);
    fwrite(buffer, 1, count, dst);
  } while(count == 4096);
}

typedef struct raylua_builder {
  mz_zip_archive zip;
  FILE *file;
} raylua_builder;

static int raylua_builder_new(lua_State *L)
{
  FILE *self = lua_touserdata(L, -2);
  const char *path = luaL_checkstring(L, -1);

  raylua_builder *builder = malloc(sizeof(raylua_builder));
  mz_zip_zero_struct(&builder->zip);

  FILE *f = fopen(path, "wb");
  if (!f) {
    free(builder);
    return luaL_error(L, "Can't open %s", path);
  }

  builder->file = f;

  append_file(f, self);

  if (!mz_zip_writer_init_cfile(&builder->zip, f, 0)) {
    free(builder);
    fclose(f);
    return luaL_error(L, "Can't initialize miniz writer.");
  }

  lua_pushlightuserdata(L, builder);
  return 1;
}

static int raylua_builder_set_executable(lua_State *L)
{
  const char *path = luaL_checkstring(L, -1);
  printf("BUILDER: Sets '%s' executable.\n", path);

  #ifndef WIN32
  /* On Windows, there is no need to set a executable flag. */
  chmod(path, 0777); /* rwx */
  #endif

  return 0;
}

static int raylua_builder_close(lua_State *L)
{
  raylua_builder *builder = lua_touserdata(L, -1);
  mz_zip_writer_finalize_archive(&builder->zip);

  free(builder);
  return 0;
}

static int raylua_builder_add(lua_State *L)
{
  raylua_builder *builder = lua_touserdata(L, -3);
  const char *path = luaL_checkstring(L, -2);
  const char *dest = luaL_checkstring(L, -1);

  if (!dest)
    dest = path;

  if (!mz_zip_writer_add_file(&builder->zip, dest, path, NULL, 0,
    MZ_BEST_COMPRESSION))
      printf("BUILDER:     > Unable to write %s (%s)\n", dest, path);

  return 0;
}

static int get_type(lua_State *L)
{
  const char *path = luaL_checkstring(L, -1);

  struct stat st;
  if (stat(path, &st)) {
    lua_pushboolean(L, 0);
    return 1;
  }

  if (S_ISREG(st.st_mode))
    lua_pushstring(L, "file");
  else if (S_ISDIR(st.st_mode))
    lua_pushstring(L, "directory");
  else
    lua_pushstring(L, "other");

  return 1;
}

static int list_dir(lua_State *L)
{
  const char *path = luaL_checkstring(L, -1);
  DIR *d = opendir(path);

  if (!d)
    return 0;

  struct dirent *entry;
  size_t count = 1;

  lua_newtable(L);

  while ((entry = readdir(d))) {
    lua_pushstring(L, entry->d_name);
    lua_rawseti(L, -2, count++);
  }

  closedir(d);
  return 1;
}

int raylua_builder_boot(lua_State *L, FILE *self)
{
  lua_pushcfunction(L, get_type);
  lua_setglobal(L, "get_type");

  lua_pushlightuserdata(L, append_file);
  lua_setglobal(L, "append_file");

  lua_pushlightuserdata(L, self);
  lua_setglobal(L, "self");

  lua_pushcfunction(L, list_dir);
  lua_setglobal(L, "list_dir");

  lua_pushcfunction(L, raylua_builder_new);
  lua_setglobal(L, "builder_new");

  lua_pushcfunction(L, raylua_builder_close);
  lua_setglobal(L, "builder_close");

  lua_pushcfunction(L, raylua_builder_add);
  lua_setglobal(L, "builder_add");

  lua_pushcfunction(L, raylua_builder_set_executable);
  lua_setglobal(L, "set_executable");

  if (luaL_dostring(L, raylua_builder_lua))
    fputs(luaL_checkstring(L, -1), stderr);

  return 0;
}
#endif
