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
/* Procedures to open the current process executable. */

#include <stdio.h>
#include <stdlib.h>

#ifdef WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif

/* Use platform specific functions. */
static inline FILE *open_self_platform(void)
{
  #ifdef WIN32
  char path[MAX_PATH + 1];
  memset(path, '\0', sizeof(path));

  GetModuleFileName(NULL, path, MAX_PATH);
  return fopen(path, "rb");
  #elif defined(__linux__)
  return fopen("/proc/self/exe", "r");
  #else
  /* TODO: Implement for Darwin and BSD hosts. */
  return NULL; /* fallback to argv0 */
  #endif
}

FILE *raylua_open_self(const char *argv0)
{
  FILE *self = open_self_platform();

  if (self == NULL)
    self = fopen(argv0, "rb");

  return self;
}
