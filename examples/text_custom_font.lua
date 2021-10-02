rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)

rl.InitWindow(800, 450, "raylib [core] example - basic window")

local font = rl.LoadFontEx("resources/NotoSans-Medium.ttf", 32, nil, 255)

while not rl.WindowShouldClose() do
  rl.BeginDrawing()
  
  rl.DrawFPS(10, 10)

  rl.ClearBackground(rl.RAYWHITE)
  rl.DrawTextEx(font, "Congrats! You created your first window!", rl.new("Vector2", 174, 200), 32, 0, rl.BLACK)
  
  rl.EndDrawing()
end

rl.CloseWindow()
