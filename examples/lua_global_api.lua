setmetatable(_G, { __index = rl })

SetConfigFlags(FLAG_VSYNC_HINT)
InitWindow(800, 450, "raylib [lua] example - global api")

while not WindowShouldClose() do
	BeginDrawing()

	ClearBackground(RAYWHITE)
	DrawText("Global API !", 350, 200, 20, LIGHTGRAY)

	EndDrawing()
end

CloseWindow()
