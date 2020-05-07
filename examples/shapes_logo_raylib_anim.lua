local screenWidth = 800
local screenHeight = 450

rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)
rl.InitWindow(screenWidth, screenHeight, "raylib [shapes] example - raylib logo animation")

local logoPositionX = screenWidth/2 - 128
local logoPositionY = screenHeight/2 - 128

local framesCounter = 0
local lettersCount = 0

local topSideRecWidth = 16
local leftSideRecHeight = 16

local bottomSideRecWidth = 16
local rightSideRecHeight = 16

local state = 0
local alpha = 1.0

local lua_color =	rl.new("Color", 3, 3, 128, 255)

local function Fade(color, alpha)
  return rl.new("Color",
    color.r * alpha,
    color.g * alpha,
    color.b * alpha,
    color.a * alpha
  )
end

while not rl.WindowShouldClose() do
  if (state == 0) then
    framesCounter = framesCounter + 1

    if (framesCounter == 120) then
      state = 1
      framesCounter = 0
    end
  elseif (state == 1) then
    topSideRecWidth = topSideRecWidth + 4
    leftSideRecHeight = leftSideRecHeight + 4

    if (topSideRecWidth == 256) then state = 2 end
  elseif (state == 2) then
    bottomSideRecWidth = bottomSideRecWidth + 4
    rightSideRecHeight = rightSideRecHeight + 4

    if (bottomSideRecWidth == 256) then state = 3 end
  elseif (state == 3) then
    framesCounter = framesCounter + 1

    if (math.floor(framesCounter / 12) == 1) then
      lettersCount = lettersCount + 1
      framesCounter = 0
    end

    if (lettersCount >= 10) then
      alpha = alpha - 0.02

      if (alpha <= 0.0) then
        alpha = 0.0
        state = 4
      end
    end
  elseif (state == 4) then
    if (rl.IsKeyPressed(rl.KEY_R)) then
      framesCounter = 0
      lettersCount = 0

      topSideRecWidth = 16
      leftSideRecHeight = 16

      bottomSideRecWidth = 16
      rightSideRecHeight = 16

      alpha = 1.0
      state = 0
    end
  end

  rl.BeginDrawing()

  rl.ClearBackground(rl.WHITE)

  if (state == 0) then
    if (math.floor(framesCounter/15)%2 == 1) then
      rl.DrawRectangle(logoPositionX, logoPositionY, 16, 16, lua_color)
    end
  elseif (state == 1) then
    rl.DrawRectangle(logoPositionX, logoPositionY, topSideRecWidth, 16, lua_color)
    rl.DrawRectangle(logoPositionX, logoPositionY, 16, leftSideRecHeight, lua_color)
  elseif (state == 2) then
    rl.DrawRectangle(logoPositionX, logoPositionY, topSideRecWidth, 16, lua_color)
    rl.DrawRectangle(logoPositionX, logoPositionY, 16, leftSideRecHeight, lua_color)

    rl.DrawRectangle(logoPositionX + 240, logoPositionY, 16, rightSideRecHeight, lua_color)
    rl.DrawRectangle(logoPositionX, logoPositionY + 240, bottomSideRecWidth, 16, lua_color)
  elseif (state == 3) then
    rl.DrawRectangle(logoPositionX, logoPositionY, topSideRecWidth, 16, Fade(lua_color, alpha))
    rl.DrawRectangle(logoPositionX, logoPositionY + 16, 16, leftSideRecHeight - 32, Fade(lua_color, alpha))

    rl.DrawRectangle(logoPositionX + 240, logoPositionY + 16, 16, rightSideRecHeight - 32, Fade(lua_color, alpha))
    rl.DrawRectangle(logoPositionX, logoPositionY + 240, bottomSideRecWidth, 16, Fade(lua_color, alpha))

    rl.DrawRectangle(screenWidth/2 - 112, screenHeight/2 - 112, 224, 224, Fade(rl.RAYWHITE, alpha))

    rl.DrawText(string.sub("raylib", 0, lettersCount), screenWidth/2 - 44, screenHeight/2 + 24, 50, Fade(lua_color, alpha))
    rl.DrawText(string.sub("Lua", 0, math.max(0, lettersCount - 3)), screenWidth/2 - 44, screenHeight/2 + 65, 50, Fade(lua_color, alpha))
  elseif (state == 4) then
    rl.DrawText("[R] REPLAY", 340, 200, 20, rl.GRAY)
  end

  rl.EndDrawing()
end

rl.CloseWindow()
