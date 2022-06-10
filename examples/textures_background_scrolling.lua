local screenWidth = 800
local screenHeight = 450

rl.InitWindow(screenWidth, screenHeight, "raylib [textures] example - background scrolling")
rl.SetTargetFPS(60)

local background = rl.LoadTexture("resources/cyberpunk_street_background.png")
local midground = rl.LoadTexture("resources/cyberpunk_street_midground.png")
local foreground = rl.LoadTexture("resources/cyberpunk_street_foreground.png")

local scrollingBack = 0.0
local scrollingMid = 0.0
local scrollingFore = 0.0


while not rl.WindowShouldClose() do
  scrollingBack = scrollingBack - 0.1
  scrollingMid = scrollingMid - 0.5
  scrollingFore = scrollingFore - 1.0

  if scrollingBack <= -background.width * 2 then
    scrollingBack = 0
  end

  if scrollingMid <= -midground.width * 2 then
    scrollingMid = 0
  end

  if scrollingFore <= -foreground.width * 2 then
    scrollingFore = 0
  end


  rl.BeginDrawing()   
  
  rl.ClearBackground(rl.GetColor(0x052c46ff))
  rl.ClearBackground(rl.RAYWHITE)
  
  -- Draw background image twice
  -- NOTE: Texture is scaled twice its size
  rl.DrawTextureEx(background, { scrollingBack, 20 }, 0.0, 2.0, rl.WHITE)
  rl.DrawTextureEx(background, { background.width * 2 + scrollingBack, 20 }, 0.0, 2.0,  rl.WHITE)

  --Draw midground image twice
  rl.DrawTextureEx(midground, { scrollingMid, 20 }, 0.0, 2.0, rl.WHITE)
  rl.DrawTextureEx(midground, { midground.width * 2 + scrollingMid, 20 }, 0.0, 2.0,  rl.WHITE)

  -- Draw foreground image twice
  rl.DrawTextureEx(foreground, { scrollingFore, 70 }, 0.0, 2.0, rl.WHITE)
  rl.DrawTextureEx(foreground, { foreground.width * 2 + scrollingFore, 70 }, 0.0, 2.0, rl.WHITE)

  rl.DrawText("BACKGROUND SCROLLING & PARALLAX", 10, 10, 20, rl.RED)
  rl.DrawText("(c) Cyberpunk Street Environment by Luis Zuno (@ansimuz)", screenWidth - 330, screenHeight - 20, 10, rl.RAYWHITE)

  rl.EndDrawing()
end

rl.UnloadTexture(background)
rl.UnloadTexture(midground)
rl.UnloadTexture(foreground)

rl.CloseWindow()