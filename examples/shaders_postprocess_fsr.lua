local screenWidth = 1920
local screenHeight = 1080

local preset = 3
local default_sharpness = 1.0

local presets = {
  { 2.0, "Performance" },
  { 1.7, "Balanced" },
  { 1.5, "Quality" },
  { 1.3, "Ultra Quality" },
  { 1.0, "Custom (Native)" }
}

local use_fsr = true

local ratio = presets[preset][1]

local num_blocks = 15

local screenSize = rl.new("Vector2", screenWidth, screenHeight)

local fbWidth = screenWidth / ratio
local fbHeight = screenHeight / ratio

local fbSize = rl.new("Vector2", fbWidth, fbHeight)

rl.SetConfigFlags(rl.FLAG_FULLSCREEN_MODE)
rl.InitWindow(screenWidth, screenHeight, "raylua [shaders] example - AMD FSR")

local render_texture = rl.LoadRenderTexture(fbWidth, fbHeight)

local dest_fb = rl.LoadRenderTexture(screenWidth, screenHeight)

local easu_shader = rl.LoadShader(nil, "resources/fsr/fsrEasu.frag")

local srcSize_loc = rl.GetShaderLocation(easu_shader, "srcSize")
local dstSize_loc = rl.GetShaderLocation(easu_shader, "dstSize")

rl.SetShaderValue(easu_shader, srcSize_loc, fbSize, rl.SHADER_UNIFORM_VEC2)
rl.SetShaderValue(easu_shader, dstSize_loc, screenSize, rl.SHADER_UNIFORM_VEC2)

local rcas_shader = rl.LoadShader(nil, "resources/fsr/fsrRcas.frag")

local sharpness_loc = rl.GetShaderLocation(rcas_shader, "sharpness")
local size_loc = rl.GetShaderLocation(rcas_shader, "dstSize")

local sharpness = rl.new("float[1]", default_sharpness)

rl.SetShaderValue(rcas_shader, sharpness_loc, sharpness, rl.SHADER_UNIFORM_FLOAT)
rl.SetShaderValue(rcas_shader, size_loc, screenSize, rl.SHADER_UNIFORM_VEC2)

local camera = rl.new("Camera3D", {
  position = { 30, 20, 30 },
  target = { 0, 0, 0 },
  up = { 0, 1, 0 },
  fovy = 70,
  type = rl.CAMERA_PERSPECTIVE
})

local enable_easu = false
local enable_rcas = false

local stop_animation = false
local t = 0.0

local bilinear = false

while not rl.WindowShouldClose() do
  if not stop_animation then
    t = rl.GetTime()
  end

  local scale = (2.0 + math.sin(t)) * 0.7
  local camera_time = t * 0.3
  
  camera.position.x = math.cos(camera_time) * 40.0
  camera.position.z = math.sin(camera_time) * 40.0

  if use_fsr then
    rl.BeginTextureMode(render_texture)
  else
    rl.BeginDrawing()
  end
  
  rl.BeginMode3D(camera)
  rl.ClearBackground(rl.RAYWHITE)
  
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
  
  if use_fsr then
    rl.EndTextureMode()

    rl.BeginTextureMode(dest_fb)
    rl.ClearBackground(rl.RAYWHITE)

    if enable_easu then
      rl.BeginShaderMode(easu_shader)
    end
    rl.DrawTextureEx(render_texture.texture, screenSize, 180, ratio, rl.WHITE)
    if enable_easu then
      rl.EndShaderMode()
    end

    rl.EndTextureMode()

    rl.BeginDrawing()
    rl.ClearBackground(rl.WHITE)

    if enable_rcas then
      rl.BeginShaderMode(rcas_shader)
    end
    rl.DrawTextureEx(dest_fb.texture, screenSize, 180, 1.0, rl.WHITE)
    if enable_rcas then
      rl.EndShaderMode()
    end
  end

  rl.DrawFPS(10, 10)

  if use_fsr then
    rl.DrawText("EASU", 10, 32, 20, enable_easu and rl.GREEN or rl.RED)
    rl.DrawText("RCAS", 10, 54, 20, enable_rcas and rl.GREEN or rl.RED)
    rl.DrawText(string.format("sharpness: %.1f", sharpness[0]), 10, 74, 10, rl.BLACK)
    rl.DrawText(string.format("Preset: %s (%.1f)", presets[preset][2], ratio), 10, 86, 10, rl.BLACK)
    rl.DrawText(string.format("Resolution: %dx%d", fbWidth, fbHeight), 10, 98, 10, rl.BLACK)
    rl.DrawText(string.format("Filter: %s", bilinear and "bilinear" or "point"), 10, 110, 10, rl.BLACK)
  else
    rl.DrawText("NATIVE", 10, 32, 20, rl.BLUE)
  end

  rl.EndDrawing()

  if rl.IsKeyPressed(rl.KEY_E) then
    enable_easu = not enable_easu
  end

  if rl.IsKeyPressed(rl.KEY_R) then
    enable_rcas = not enable_rcas
  end
  
  if rl.IsKeyPressed(rl.KEY_N) then
    use_fsr = not use_fsr
  end

  if rl.IsKeyPressed(rl.KEY_LEFT) then
    sharpness[0] = math.max(0.0, sharpness[0] - 0.1)
    rl.SetShaderValue(rcas_shader, sharpness_loc, sharpness, rl.SHADER_UNIFORM_FLOAT)
  end

  if rl.IsKeyPressed(rl.KEY_RIGHT) then
    sharpness[0] = math.min(2.0, sharpness[0] + 0.1)
    rl.SetShaderValue(rcas_shader, sharpness_loc, sharpness, rl.SHADER_UNIFORM_FLOAT)
  end
  
  if rl.IsKeyPressed(rl.KEY_F) then
    bilinear = not bilinear
  
    rl.SetTextureFilter(render_texture.texture,
      bilinear and rl.TEXTURE_FILTER_BILINEAR or rl.TEXTURE_FILTER_POINT)
  end
  
  local preset_changed = false
  if rl.IsKeyPressed(rl.KEY_UP) then
    preset_changed = true
    preset = preset + 1
    if preset == #presets + 1 then
      preset = 1
    end
  end

  if rl.IsKeyPressed(rl.KEY_DOWN) then
    preset_changed = true
    preset = preset - 1
    if preset == 0 then
      preset = #presets
    end
  end
  
  if rl.IsKeyPressed(rl.KEY_S) then
    stop_animation = not stop_animation
  end
  
  if rl.IsKeyPressed(rl.KEY_F11) then
    rl.ToggleFullscreen()
  end

  
  if preset_changed then
    ratio = presets[preset][1]
    fbWidth = screenWidth / ratio
    fbHeight = screenHeight / ratio

    fbSize = rl.new("Vector2", fbWidth, fbHeight)
    
    rl.UnloadRenderTexture(render_texture)
    
    render_texture = rl.LoadRenderTexture(fbWidth, fbHeight)

    
    rl.SetTextureFilter(render_texture.texture,
      bilinear and rl.TEXTURE_FILTER_BILINEAR or rl.TEXTURE_FILTER_POINT)
  end
end

rl.UnloadRenderTexture(render_texture)
rl.UnloadRenderTexture(dest_fb)
rl.CloseWindow()
