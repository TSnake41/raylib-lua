local width, height = 800, 450

rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)
rl.InitWindow(800, 450, "raylib [shapes] example - basic shapes drawing")
rl.InitAudioDevice()

local logo = rl.LoadTexture "ressources/logo.png"
local music = rl.LoadSound "ressources/mini1111.ogg"

rl.PlaySound(music)

while not rl.WindowShouldClose() do
	rl.BeginDrawing()
  rl.ClearBackground(rl.RAYWHITE)

  rl.DrawTexture(logo, width/2 - logo.width/2, height/2 - logo.height/2, rl.WHITE)
  rl.DrawText("this is a texture!", 350, 370, 10, rl.GRAY)

  rl.EndDrawing()
end

rl.CloseAudioDevice()
rl.CloseWindow()
