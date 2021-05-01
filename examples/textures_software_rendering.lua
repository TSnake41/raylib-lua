local lua_color =	rl.new("Color", 3, 3, 128, 255)

local width, height = 800, 450

--rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)
rl.SetTraceLogLevel(rl.LOG_WARNING)
rl.InitWindow(width, height, "raylib [shapes] example - software rendered raylib logo")

local framebuffer = rl.new "Image"
local fb_data = rl.new("Color[?]", width * height)

framebuffer.width = width
framebuffer.height = height
framebuffer.format = rl.PIXELFORMAT_UNCOMPRESSED_R8G8B8A8
framebuffer.mipmaps = 1
framebuffer.data = fb_data

local fb_texture = rl.LoadTextureFromImage(framebuffer)

while not rl.WindowShouldClose() do
  --rl.ImageClearBackground(framebuffer, rl.RAYWHITE)
  for i=0,width*height-1 do
    fb_data[i] = rl.RAYWHITE
  end

  rl.ImageDrawRectangle(framebuffer, width / 2 - 128, height / 2 - 128, 256, 256, lua_color)
  rl.ImageDrawRectangle(framebuffer, width / 2 - 112, height / 2 - 112, 224, 224, rl.RAYWHITE)
  rl.ImageDrawText(framebuffer, "raylib", width / 2 - 44, height / 2 + 24, 50, lua_color)
  rl.ImageDrawText(framebuffer, "Lua", width / 2 - 44, height / 2 + 65, 50, lua_color)

  rl.ImageDrawText(framebuffer, "this is NOT a texture!", 350, 370, 10, rl.GRAY)

  rl.UpdateTexture(fb_texture, fb_data)

  rl.BeginDrawing()
  rl.ClearBackground(rl.RAYWHITE)
  rl.DrawTexture(fb_texture, 0, 0, rl.WHITE)
  rl.DrawFPS(10, 10)
  rl.EndDrawing()
end

rl.CloseWindow()