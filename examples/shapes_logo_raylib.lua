local ffi = require "ffi"
local lua_color =	ffi.new("Color", 3, 3, 128, 255)

rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)
rl.SetTargetFPS(60)

local width, height = 800, 450

rl.InitWindow(800, 450, "raylib [shapes] example - basic shapes drawing")

while not rl.WindowShouldClose() do
	rl.BeginDrawing()

  rl.ClearBackground(rl.RAYWHITE)

  rl.DrawRectangle(width / 2 - 128, height / 2 - 128, 256, 256, lua_color)
  rl.DrawRectangle(width / 2 - 112, height / 2 - 112, 224, 224, rl.RAYWHITE)
  rl.DrawText("raylib", width / 2 - 44, height / 2 + 24, 50, lua_color)
  rl.DrawText("Lua", width / 2 - 44, height / 2 + 65, 50, lua_color)

  rl.DrawText("this is NOT a texture!", 350, 370, 10, rl.GRAY)

	rl.EndDrawing()
end

rl.CloseWindow()
