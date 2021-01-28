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

#include <raylib.h>
#include "lib/microui.c"
#include "lib/microui.h"

#ifdef WIN32
#include "lib/dirent.h"
#define stat _stat
#else
#include <dirent.h>
#endif

#ifdef WIN32
//#include <windows.h>
#endif

#undef DrawText

static int get_text_width(mu_Font font, const char *str, int len)
{
  if (font == NULL)
    return MeasureText(str, 10);
}

static int get_text_height(mu_Font font)
{
  return 10;
}

void builder_menu(mu_Context *ctx)
{
  if (mu_begin_window(ctx, "raylua builder", mu_rect(0, 0, 400, 290))) {

    mu_layout_row(ctx, 1, (int []){ -1 }, -1);

    DIR *dir = opendir(".");
    struct dirent *ent = NULL;

    while ((ent = readdir(dir)))
      mu_text(ctx, ent->d_name);

    closedir(dir);

    mu_end_window(ctx);
  }
}

int raylua_builder_boot_ui(FILE *self)
{
  #ifdef WIN32
  //FreeConsole();
  #endif

  //SetTraceLogLevel(LOG_WARNING);
  SetConfigFlags(FLAG_VSYNC_HINT);
  InitWindow(400, 300, "raylua builder ui");
  
  mu_Context *ctx = malloc(sizeof(mu_Context));
  mu_init(ctx);

  ctx->text_width = get_text_width;
  ctx->text_height = get_text_height;

  while (!WindowShouldClose()) {

    int mx = GetMouseX(), my = GetMouseY();

    if (IsMouseButtonDown(MOUSE_LEFT_BUTTON))
      mu_input_mousedown(ctx, mx, my, MU_MOUSE_LEFT);
    if (IsMouseButtonUp(MOUSE_LEFT_BUTTON))
      mu_input_mouseup(ctx, mx, my, MU_MOUSE_LEFT);

    mu_input_mousemove(&ctx, mx, my);

    mu_begin(ctx);
    builder_menu(ctx);
    mu_end(ctx);

    BeginDrawing();
    ClearBackground(RAYWHITE);

    mu_Command *cmd = NULL;
    while (mu_next_command(ctx, &cmd)) {
      if (cmd->type == MU_COMMAND_TEXT) {
        Color c = {
          .r = cmd->text.color.r,
          .g = cmd->text.color.g,
          .b = cmd->text.color.b,
          .a = cmd->text.color.a
        };

        DrawText(cmd->text.str, cmd->text.pos.x, cmd->text.pos.y, 10, c);
      }
      if (cmd->type == MU_COMMAND_RECT) {
        Color c = {
          .r = cmd->rect.color.r,
          .g = cmd->rect.color.g,
          .b = cmd->rect.color.b,
          .a = cmd->rect.color.a
        };
        mu_Rect rect = cmd->rect.rect;

        DrawRectangle(rect.x, rect.y, rect.w, rect.h, c);
      }
      if (cmd->type == MU_COMMAND_CLIP) {
        BeginScissorMode(cmd->clip.rect.x, cmd->clip.rect.y, cmd->clip.rect.w, cmd->clip.rect.h);
      }
    }

    EndScissorMode();

    EndDrawing();
  }
}