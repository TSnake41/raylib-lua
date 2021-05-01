--[[
raylib 32x32 game/demo competition

Competition consist in developing a videogame in a 32x32 pixels screen size.

RULES:

 1) Use only raylib (and included libraries), no external libraries allowed
 2) The submission should consist of just one source file
 3) Render your game/demo to a 32x32 pixels render texture,
    show what you could do with a 32x32 RGB LED matrix!
 4) No external resources, you CAN only create them programmatically,
 5) Game/demo can be 2D or 3D, choose wisely
 5) Shaders (if used) should be included in the source as string (char *)
    and loaded with LoadShaderCode()
 6) Code must compile and execute in PLATFORM_DESKTOP (Windows, Linux, macOS)


LICENSE: zlib/libpng

Copyright (c) 2020 <TODO: participant_name> (<TODO: participant_github_name>)

This software is provided "as-is", without any express or implied warranty. In no event
will the authors be held liable for any damages arising from the use of this software.

Permission is granted to anyone to use this software for any purpose, including commercial
applications, and to alter it and redistribute it freely, subject to the following restrictions:

 1. The origin of this software must not be misrepresented; you must not claim that you
 wrote the original software. If you use this software in a product, an acknowledgment
 in the product documentation would be appreciated but is not required.

 2. Altered source versions must be plainly marked as such, and must not be misrepresented
 as being the original software.

 3. This notice may not be removed or altered from any source distribution.
]]

local windowWidth = 512
local windowHeight = 512
local gameScreenWidth = 32
local gameScreenHeight = 32

rl.SetTraceLogLevel(rl.LOG_WARNING)
rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)
rl.InitWindow(windowWidth, windowHeight, "my 32x32 game/demo")

local target = rl.LoadRenderTexture(gameScreenWidth, gameScreenHeight)
rl.SetTextureFilter(target.texture, rl.TEXTURE_FILTER_POINT)

rl.SetTargetFPS(60)

while not rl.WindowShouldClose() do
  local scale = math.min(rl.GetScreenWidth() / gameScreenWidth, rl.GetScreenHeight() / gameScreenHeight)

  rl.BeginDrawing()

    rl.BeginTextureMode(target)
      rl.ClearBackground(rl.WHITE)
      rl.DrawTextEx(rl.GetFontDefault(), "Hello", rl.new("Vector2", 4, 0), rl.GetFontDefault().baseSize, 1, rl.new("Color", 0, 64, 255, 255))
      rl.DrawTextEx(rl.GetFontDefault(), "it's", rl.new("Vector2", 8, 10), rl.GetFontDefault().baseSize, 1, rl.new("Color", 0, 64, 255, 255))
      rl.DrawTextEx(rl.GetFontDefault(), "raylua", rl.new("Vector2", 0, 20), rl.GetFontDefault().baseSize, 1, rl.new("Color", 0, 64, 255, 255))

    rl.EndTextureMode()

    rl.DrawTexturePro(
      target.texture,
      rl.new("Rectangle", 0, 0, target.texture.width, -target.texture.height),
      rl.new("Rectangle",
        (rl.GetScreenWidth() - gameScreenWidth * scale) * 0.5,
        (rl.GetScreenHeight() - gameScreenHeight * scale) * 0.5,
        gameScreenWidth * scale, gameScreenHeight * scale
      ), rl.new("Vector2", 0, 0), 0, rl.WHITE
    )

    for x=0,rl.GetScreenWidth(),16 do
      rl.DrawRectangle(x, 0, 4, rl.GetScreenHeight(), rl.BLACK)
    end

    for y=0,rl.GetScreenHeight(),16 do
      rl.DrawRectangle(0, y, rl.GetScreenWidth(), 4, rl.BLACK)
    end
  rl.EndDrawing()
end

rl.UnloadRenderTexture(target)

rl.CloseWindow()
