rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)

rl.InitWindow(800, 450, "raylib [lua] example - repl")

while not rl.WindowShouldClose() do
	rl.BeginDrawing()

	rl.ClearBackground(rl.RAYWHITE)
	rl.DrawText("Press [R] to go to REPL !", 260, 200, 20, rl.LIGHTGRAY)

  if rl.IsKeyDown(rl.KEY_R) then
    raylua.repl()
  end

	rl.EndDrawing()
end

rl.CloseWindow()
