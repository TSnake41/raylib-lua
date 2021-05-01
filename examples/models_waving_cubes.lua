--[[
  Contributed by Codecat (@codecat)
  Reviewed by Ramon Santamaria (@raysan5)

  Modified by Teddy Astie (@TSnake41) for Lua binding.
]]

local width, height = 800, 450

rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)

rl.InitWindow(width, height, "raylib [models] example - waving cubes")

local camera = rl.new("Camera3D", {
  position = { 30, 20, 30 },
  target = { 0, 0, 0 },
  up = { 0, 1, 0 },
  fovy = 70,
  type = rl.CAMERA_PERSPECTIVE
})

local num_blocks = 15

while not rl.WindowShouldClose() do
  local t = rl.GetTime()

  local scale = (2.0 + math.sin(t)) * 0.7
  local camera_time = t * 0.3

  camera.position.x = math.cos(camera_time) * 40.0
  camera.position.z = math.sin(camera_time) * 40.0

  rl.BeginDrawing()
  rl.ClearBackground(rl.RAYWHITE)

  rl.BeginMode3D(camera)
  rl.DrawGrid(10, 5.0)

  for x=0,num_blocks-1 do
    for y=0,num_blocks-1 do
      for z=0,num_blocks-1 do
        local block_scale = (x + y + z) / 30
        local scatter = math.sin(block_scale * 20.0 + t * 4.0)

        local cube_pos = rl.new("Vector3",
          (x - num_blocks / 2) * (scale * 3.0) + scatter,
          (y - num_blocks / 2) * (scale * 2.0) + scatter,
          (z - num_blocks / 2) * (scale * 3.0) + scatter)

        local cube_color = rl.ColorFromHSV(
          (((x + y + z) * 18) % 360), 0.75, 0.9
        )

        local cube_size = (2.4 - scale) * block_scale

        rl.DrawCube(cube_pos, cube_size, cube_size, cube_size, cube_color)
      end
    end
  end

  rl.EndMode3D()
  rl.DrawFPS(10, 10)

  rl.EndDrawing()
end

rl.CloseWindow()
