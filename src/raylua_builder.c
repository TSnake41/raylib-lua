/*
  Copyright (C) 2019 Astie Teddy

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

#ifndef strcasecmp
#define strcasecmp strcmpi
#endif
#else
#include <dirent.h>
#endif

#include "lib/miniz.h"

#ifndef WRAY_NO_BUILDER
static void append_file(FILE *dst, FILE *src)
{
  size_t count;
  do {
    uint8_t buffer[4096];
    count = fread(buffer, 1, 4096, src);
    fwrite(buffer, 1, count, dst);
  } while(count == 4096);
}

int wray_build_executable(const char *self_path, const char *input_path)
{
  printf("Create new executable from %s.\n", input_path);

  struct stat st;
  int result = stat(input_path, &st);
  if (result) {
    printf("%s: Can't get file information.\n", input_path);
    return 1;
  }

  size_t arg_len = strlen(input_path);
  size_t len = arg_len + 5; // + ".exe\0"

  char output_path[len];
  strcpy(output_path, input_path);

  if (output_path[arg_len - 1] == '/') {
    /* Remove trailing '/'. */
    output_path[arg_len - 1] = '\0';
    arg_len--;
  }

  strncpy(output_path + arg_len, ".exe", 5);

  FILE *output = fopen(output_path, "wb");
  if (output == NULL) {
    printf("Can't open %s for writing.\n", output_path);
    return 1;
  }

  FILE *self = fopen(self_path, "rb");
  if (self == NULL) {
    puts("Can't open itself");
    return 1;
  }

  /* Copy self into output. */
  append_file(output, self);
  fclose(self);

  /* Get the offset to put it at the end of the file. */
  fpos_t offset;
  fgetpos(output, &offset);

  if (S_ISREG(st.st_mode)) {
    /* Consider input as a bare bundle, just append file to get output. */
    FILE *input = fopen(input_path, "rb");

    append_file(output, input);
    fclose(input);
  } else if (S_ISDIR(st.st_mode)) {
    /* We need to explore the directory and write each file to a zip file. */
    mz_zip_archive zip;
    mz_zip_zero_struct(&zip);

    if (!mz_zip_writer_init_cfile(&zip, output, 0)) {
      puts("Can't initialize zip writter inside output.");
      return 0;
    }

    DIR *d = opendir(input_path);
    chdir(input_path);

    struct dirent *entry;

    /* NOTE: Hardcoded 512 path limit. */
    char dest_path[512];

    while ((entry = readdir(d))) {
      char *original_path = entry->d_name;
      memset(dest_path, 0, 512);

      struct stat st;
      if (stat(original_path, &st)) {
        printf("Skip %s (stat() failed)\n", original_path);
        continue;
      }

      if (!S_ISREG(st.st_mode)) {
        printf("Skip %s (not a file)\n", original_path);
        continue;
      }

      size_t len = strlen(original_path);
      if (len > 512) {
        printf("Skipping %s: path too long\n", original_path);
        continue;
      }

      if (len > 5 && strcmp(original_path + len - 5, ".wren") == 0) {
        len -= 5; /* Exclude .wren extension. */
      }

      strncpy(dest_path, original_path, len);

      printf("Add %s (original: %s)...\n", dest_path, original_path);

      if (!mz_zip_writer_add_file(&zip, dest_path, original_path, NULL, 0,
        MZ_BEST_COMPRESSION)) {
          printf("miniz error: %x\n", mz_zip_get_last_error(&zip));
      }
    }

    closedir(d);

    puts("Finalizing zip archive...");

    if (!mz_zip_writer_finalize_archive(&zip))
      puts("Can't finalize archive.");

    mz_zip_end(&zip);

    // Write offset
    fwrite(&offset, sizeof(fpos_t), 1, output);
    fclose(output);
  }

  free(output_path);
  return 0;
}
#endif
