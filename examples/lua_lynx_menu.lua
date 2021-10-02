local lynx = require "lynx"
local raylua_funcs = require "lynx.raylua_lynx"

local menu = lynx.menu ({
  lynx.text("Test Lynx menu in Raylib", { selectable = false }),
  lynx.text("", { selectable = false }),
  lynx.text("Long life to Lynx !"),
  lynx.text("the best UI library ever !"),
  lynx.text("which works everywhere !"),
  lynx.text("", { selectable = false }),
  lynx.text("@TSnake41"),
}, {
  x = 0,
  y = 0,
  w = 500,
  h = 500,
  default_height = 24,
  current = 3,
  funcs = raylua_funcs
})

rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)
rl.InitWindow(800, 450, "raylib [lua] example - lynx menu")

while not rl.WindowShouldClose() do
	rl.BeginDrawing()
	rl.ClearBackground(rl.BLACK)
  local pos = rl.GetMousePosition()
  menu:input_mouse(pos.x, pos.y, 0)

  menu:update(rl.GetFrameTime())
  menu:draw()

	rl.EndDrawing()
end

rl.CloseWindow()
