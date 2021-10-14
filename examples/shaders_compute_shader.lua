local ffi = require "ffi"
local width, height = 1024, 1024
rl.InitWindow(width, height, "raylib-lua [core] example - compute shader")
local computeShaderCode
do
  local f = io.open("resources/gol.glsl", "rb")
  assert(f, "Can't read resources/gol.glsl file")
  computeShaderCode = f:read "*a"
  f:close()
end

local computeShader = rl.rlCompileShader(computeShaderCode, rl.RL_COMPUTE_SHADER)
local csProgram = rl.rlLoadComputeShaderProgram(computeShader)
print(csProgram)

local ssbo_size = ffi.sizeof("int32_t[?]", width * height)
local ssbo_baseBuffer = ffi.new("int32_t[?]", width * height)
for i=0,width * height - 1 do
  ssbo_baseBuffer[i] = 0
end

local shader_framebuffer = rl.new("Color[?]", width * height)
local ssbo_image = rl.new "Image" ---@type Image

ssbo_image.data = shader_framebuffer
ssbo_image.width = width
ssbo_image.height = height
ssbo_image.format = rl.PIXELFORMAT_UNCOMPRESSED_R8G8B8A8
ssbo_image.mipmaps = 1

local ssboA = rl.rlLoadShaderBuffer(ssbo_size, ssbo_baseBuffer, rl.RL_STREAM_COPY)
local ssboB = rl.rlLoadShaderBuffer(ssbo_size, ssbo_baseBuffer, rl.RL_STREAM_COPY)

-- Create a texture to apply shader
local renderTexture = rl.LoadRenderTexture(width, height)

local renderShader = rl.LoadShaderFromMemory(nil, [[
#version 430
out vec4 finalColor;
in vec2 fragTexCoord;

layout(std430, binding = 1) readonly buffer golLayout {
  int golBuffer[];
};

uniform vec2 res;

void main()
{
  ivec2 coords = ivec2(fragTexCoord * res);

  if (golBuffer[coords.x + coords.y * uint(res.x)] == 1)
    finalColor = vec4(1.0);
  else
    finalColor = vec4(0.0, 0.0, 0.0, 1.0);
}
]])

local resolution = ffi.new("float[2]", width, height)
local res_uniform = rl.GetShaderLocation(renderShader, "res")

while not rl.WindowShouldClose() do
  rl.BeginDrawing()

  if rl.IsMouseButtonDown(rl.MOUSE_BUTTON_LEFT) then
    rl.rlReadShaderBufferElements(ssboB, ssbo_baseBuffer, ssbo_size, 0)

    -- Correct colors
    for i=0,(width * height)-1 do
      local toggled = ssbo_baseBuffer[i]

      shader_framebuffer[i].r = toggled * 255
      shader_framebuffer[i].g = toggled * 255
      shader_framebuffer[i].b = toggled * 255
      shader_framebuffer[i].a = toggled * 255
    end

    rl.ImageDrawRectangleV(ssbo_image, rl.GetMousePosition(), rl.new("Vector2", 25, 25), rl.WHITE)

    for x=0,ssbo_image.width-1 do
      for y=0,ssbo_image.height-1 do
        ssbo_baseBuffer[x + y * width] = (shader_framebuffer[x + y * width].r > 0)
      end
    end
    rl.rlUpdateShaderBufferElements(ssboB, ssbo_baseBuffer, ssbo_size, 0)
  else
    rl.rlEnableShader(csProgram)
    rl.rlBindShaderBuffer(ssboA, 1)
    rl.rlBindShaderBuffer(ssboB, 2)
    rl.rlComputeShaderDispatch(width / 16, height / 16, 1)
    rl.rlDisableShader()
  end

  rl.ClearBackground(rl.BLANK)
  rl.SetShaderValue(renderShader, res_uniform, resolution, rl.SHADER_UNIFORM_VEC2)
  rl.BeginShaderMode(renderShader)
  rl.DrawTexture(renderTexture.texture, 0, 0, rl.WHITE)
  rl.EndShaderMode()
  rl.DrawFPS(0, 0)
  rl.EndDrawing()

  ssboA, ssboB = ssboB, ssboA
end

rl.CloseWindow()
