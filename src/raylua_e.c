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

/* Raylua embedded executable */
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

#include "raylua.h"
#include "lib/miniz.h"

#ifndef RAYLUA_NO_BUILDER
int raylua_builder_boot(lua_State *L);
#endif

static mz_zip_archive zip_file;

int raylua_loadfile(lua_State *L)
{
  const char *path = luaL_checkstring(L, 1);

  int index = mz_zip_reader_locate_file(&zip_file, path, NULL, 0);
  if (index == -1) {
    lua_pushfstring(L, "%s: File not found.", path);
    lua_pushnil(L);
    return 2;
  }

  mz_zip_archive_file_stat stat;
  if (!mz_zip_reader_file_stat(&zip_file, index, &stat)) {
    lua_pushfstring(L, "%s: Can't get file information.", path);
    lua_pushnil(L);
    return 2;
  }

  size_t size = stat.m_uncomp_size;
  char *buffer = malloc(size + 1);
  if (buffer == NULL) {
    lua_pushfstring(L, "%s: Can't allocate file buffer.", path);
    lua_pushnil(L);
    return 2;
  }
  buffer[size] = '\0';

  mz_zip_reader_extract_to_mem(&zip_file, index, buffer, size, 0);

  lua_pushlstring(L, buffer, size);
  free(buffer);
  return 1;
}

static bool raylua_init_payload(const char *path, bool direct)
{
  mz_zip_zero_struct(&zip_file);

  if (direct) {
    if (!mz_zip_reader_init_file(&zip_file, path, 0))
      return false;
  } else {
    FILE *f = fopen(path, "rb");

    if (f == NULL) {
      puts("[RAYLUA] Can't load self.");
      return false;
    } else {
      /* Read offset at the end of the file */
      fpos_t offset;
      fseek(f, -(long)sizeof(fpos_t), SEEK_END);
      fread(&offset, sizeof(fpos_t), 1, f);

      fsetpos(f, &offset);

      if (!mz_zip_reader_init_cfile(&zip_file, f, 0, 0))
        return false;
    }
  }

  return true;
}

int main(int argc, const char **argv)
{
  lua_State *L = luaL_newstate();
  luaL_openlibs(L);

  if (L == NULL)
    puts("[RAYLUA] Unable to initialize Lua.");

  /* Populate arg. */
  lua_newtable(L);

  int i = 0;
  while (argc != i) {
    lua_pushstring(L, argv[i]);
    lua_rawseti(L, -2, i);

    i++;
  }

  lua_setglobal(L, "arg");

  const char *path = argv[0];
  #ifdef WIN32
  /* Executable name translation. */
  size_t path_len = strlen(path);
  char new_path[path_len + 5];

  if (path_len > 4 && stricmp(path + path_len - 4, ".exe")) {
    strcpy(new_path, path);
    strcpy(new_path + path_len, ".exe");

    printf("[RAYLUA] Translated self executable name from %s to %s.\n", path, new_path);
    path = new_path;
  }
  #endif

  if (!raylua_init_payload(path, false)) {
    #ifdef RAYLUA_NO_BUILDER
    puts("[RAYLUA] No payload.");
    #else
    puts("[RAYLUA] No payload, use internal builder.");
    raylua_builder_boot(L);
    #endif
  } else {
    /* Boot on payload. */
    raylua_boot(L, raylua_loadfile, false);
  }

  lua_close(L);
  return 0;
}
