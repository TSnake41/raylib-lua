--------------------------------------------------------------------------------------------
--
--   raylib [textures] example - Bunnymark
--
--   This example has been created using raylib 1.6 (www.raylib.com)
--   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
--
--   Copyright (c) 2014-2019 Ramon Santamaria (@raysan5)
--
--------------------------------------------------------------------------------------------
local ffi = require "ffi"

local MAX_BUNNIES = 100000    -- 100K bunnies limit

-- This is the maximum amount of elements (quads) per batch
-- NOTE: This value is defined in [rlgl] module and can be changed there
local MAX_BATCH_ELEMENTS = 8192

-- Create the Bunny class.
Bunny = {}
Bunny.__index = Bunny
function Bunny:new(pos, spd, col)
  local bunny = {}
  setmetatable(bunny,Bunny)
  bunny.position = pos
  bunny.speed = spd
  bunny.color = col
  return bunny
end
function Bunny:update(texture)
  self.position.x = self.position.x + self.speed.x
  self.position.y = self.position.y + self.speed.y
  if ((self.position.x + texture.width/2) > rl.GetScreenWidth()) or ((self.position.x + texture.width/2) < 0) then
    self.speed.x = self.speed.x * -1
  end
  if ((self.position.y + texture.height/2) > rl.GetScreenHeight()) or ((self.position.y + texture.height/2 - 40) < 0) then
    self.speed.y = self.speed.y * -1
  end
end

-- Initialization
----------------------------------------------------------------------------------------
local screenWidth = 800
local screenHeight = 450

rl.InitWindow(screenWidth, screenHeight, "raylib [textures] example - bunnymark")

-- Load bunny texture
local texBunny = rl.LoadTexture("resources/wabbit_alpha.png")

local bunnies = {}

rl.SetTargetFPS(60)               -- Set our game to run at 60 frames-per-second
----------------------------------------------------------------------------------------

-- Main game loop
while not rl.WindowShouldClose() do    -- Detect window close button or ESC key
    -- Update
    ------------------------------------------------------------------------------------
    if rl.IsMouseButtonDown(rl.MOUSE_LEFT_BUTTON) then
        -- Create more bunnies
        for i = 1, 100 do
            if #bunnies < MAX_BUNNIES then
                local speed = ffi.new("Vector2", rl.GetRandomValue(-250, 250) / 60, rl.GetRandomValue(-250, 250) / 60)
                local color = ffi.new("Color", rl.GetRandomValue(50, 240), rl.GetRandomValue(80, 240), rl.GetRandomValue(100, 240), 255)
                --bunnies[#bunnies] = Bunny:new(nil, GetMousePosition(), speed, color)
                table.insert(bunnies, Bunny:new(rl.GetMousePosition(), speed, color))
            end
        end
    end

    -- Update bunnies
    for i = 1, #bunnies do
        bunnies[i]:update(texBunny)
    end
    ------------------------------------------------------------------------------------

    -- Draw
    ------------------------------------------------------------------------------------
    rl.BeginDrawing();

        rl.ClearBackground(rl.RAYWHITE);

        for i = 1, #bunnies do
            -- NOTE: When internal batch buffer limit is reached (MAX_BATCH_ELEMENTS),
            -- a draw call is launched and buffer starts being filled again;
            -- before issuing a draw call, updated vertex data from internal CPU buffer is send to GPU...
            -- Process of sending data is costly and it could happen that GPU data has not been completely
            -- processed for drawing while new data is tried to be sent (updating current in-use buffers)
            -- it could generates a stall and consequently a frame drop, limiting the number of drawn bunnies
            rl.DrawTexture(texBunny, bunnies[i].position.x, bunnies[i].position.y, bunnies[i].color);
        end

        rl.DrawRectangle(0, 0, screenWidth, 40, rl.BLACK)
        rl.DrawText("bunnies: " .. #bunnies, 120, 10, 20, rl.GREEN)
        rl.DrawText("batched draw calls: " .. math.ceil(1 + #bunnies / MAX_BATCH_ELEMENTS), 320, 10, 20, rl.MAROON)
        -- DrawText(FormatText("bunnies: %i", #bunnies), 120, 10, 20, GREEN)
        -- DrawText(FormatText("batched draw calls: %i", 1 + #bunnies/MAX_BATCH_ELEMENTS), 320, 10, 20, MAROON)

        rl.DrawFPS(10, 10)

    rl.EndDrawing()
    ------------------------------------------------------------------------------------
end

-- De-Initialization
----------------------------------------------------------------------------------------

rl.UnloadTexture(texBunny)    -- Unload bunny texture

rl.CloseWindow()              -- Close window and OpenGL context
----------------------------------------------------------------------------------------
