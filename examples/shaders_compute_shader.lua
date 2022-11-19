local ffi = require "ffi"

-- IMPORTANT: This must match gol*.glsl GOL_WIDTH constant.
-- This must be a multiple of 16 (check golLogic compute dispatch).
local GOL_WIDTH = 768

-- Maximum amount of queued draw commands (squares draw from mouse down events).
local MAX_BUFFERED_TRANSFERTS = 48

ffi.cdef [[
  typedef struct GolUpdateCmd {
    unsigned int x;
    unsigned int y;
    unsigned int w;
    unsigned int enabled;
  } GolUpdateCmd;
]]

ffi.cdef(string.format([[
  typedef struct GolUpdateSSBO {
    unsigned int count;
    GolUpdateCmd commands[%d];
  } GolUpdateSSBO;
]], MAX_BUFFERED_TRANSFERTS))

rl.InitWindow(GOL_WIDTH, GOL_WIDTH, "raylib [rlgl] example - compute shader - game of life")

local resolution = rl.new("Vector2", GOL_WIDTH, GOL_WIDTH)
local brushSize = 8

-- Game of Life logic compute shader
local golLogicCode = rl.LoadFileText("resources/glsl430/gol.glsl")
local golLogicShader = rl.rlCompileShader(golLogicCode, rl.RL_COMPUTE_SHADER);
local golLogicProgram = rl.rlLoadComputeShaderProgram(golLogicShader);
rl.UnloadFileText(golLogicCode);

-- Game of Life rendering compute shader
local golRenderShader = rl.LoadShader(nil, "resources/glsl430/gol_render.glsl")
local resUniformLoc = rl.GetShaderLocation(golRenderShader, "resolution")

local golTransfertCode = rl.LoadFileText("resources/glsl430/gol_transfert.glsl");
local golTransfertShader = rl.rlCompileShader(golTransfertCode, rl.RL_COMPUTE_SHADER);
local golTransfertProgram = rl.rlLoadComputeShaderProgram(golTransfertShader);
rl.UnloadFileText(golTransfertCode);

local ssboSize = ffi.sizeof("int[?]", GOL_WIDTH * GOL_WIDTH)
local ssboA = rl.rlLoadShaderBuffer(ssboSize, nil, rl.RL_DYNAMIC_COPY);
local ssboB = rl.rlLoadShaderBuffer(ssboSize, nil, rl.RL_DYNAMIC_COPY);

local transfertBuffer = ffi.new("struct GolUpdateSSBO")
transfertBuffer.count = 0

local transfertBufferSize = ffi.sizeof "struct GolUpdateSSBO"

local transfertSSBO = rl.rlLoadShaderBuffer(transfertBufferSize, nil, rl.RL_DYNAMIC_COPY);

-- Create a white texture of the size of the window to update 
-- each pixel of the window using the fragment shader
local whiteImage = rl.GenImageColor(GOL_WIDTH, GOL_WIDTH, rl.WHITE);
local whiteTex = rl.LoadTextureFromImage(whiteImage);
rl.UnloadImage(whiteImage)

while not rl.WindowShouldClose() do

  brushSize = math.floor(brushSize + rl.GetMouseWheelMove())

  if ((rl.IsMouseButtonDown(rl.MOUSE_BUTTON_LEFT) or rl.IsMouseButtonDown(rl.MOUSE_BUTTON_RIGHT))
    and (transfertBuffer.count < MAX_BUFFERED_TRANSFERTS)) then
    -- Buffer a new command
    transfertBuffer.commands[transfertBuffer.count].x = rl.GetMouseX() - brushSize/2
    transfertBuffer.commands[transfertBuffer.count].y = rl.GetMouseY() - brushSize/2
    transfertBuffer.commands[transfertBuffer.count].w = brushSize
    transfertBuffer.commands[transfertBuffer.count].enabled = rl.IsMouseButtonDown(rl.MOUSE_BUTTON_LEFT)
    transfertBuffer.count = transfertBuffer.count + 1
  elseif transfertBuffer.count > 0 then
    -- Process transfert buffer

    -- Send SSBO buffer to GPU
    rl.rlUpdateShaderBuffer(transfertSSBO, transfertBuffer, transfertBufferSize, 0);
    
    -- Process ssbo command
    rl.rlEnableShader(golTransfertProgram);
    rl.rlBindShaderBuffer(ssboA, 1);
    rl.rlBindShaderBuffer(transfertSSBO, 3);
    rl.rlComputeShaderDispatch(transfertBuffer.count, 1, 1) -- each GPU unit will process a command
    rl.rlDisableShader();

    transfertBuffer.count = 0;
  else
    -- Process game of life logic
    rl.rlEnableShader(golLogicProgram)
    rl.rlBindShaderBuffer(ssboA, 1)
    rl.rlBindShaderBuffer(ssboB, 2)
    rl.rlComputeShaderDispatch(GOL_WIDTH / 8, GOL_WIDTH / 8, 1)
    rl.rlDisableShader()

    ssboA, ssboB = ssboB, ssboA
  end

  rl.rlBindShaderBuffer(ssboA, 1)
  rl.SetShaderValue(golRenderShader, resUniformLoc, resolution, rl.SHADER_UNIFORM_VEC2);

  rl.BeginDrawing()

  rl.ClearBackground(rl.BLANK)

  rl.BeginShaderMode(golRenderShader)
  rl.DrawTexture(whiteTex, 0, 0, rl.WHITE)
  rl.EndShaderMode()
  
  rl.DrawRectangleLines(
    rl.GetMouseX() - brushSize/2,
    rl.GetMouseY() - brushSize/2,
    brushSize, brushSize,
    rl.RED)

  rl.DrawText("Use Mouse wheel to increase/decrease brush size", 10, 10, 20, rl.WHITE);
  rl.DrawFPS(rl.GetScreenWidth() - 100, 10);

  rl.EndDrawing()
end

rl.rlUnloadShaderBuffer(ssboA);
rl.rlUnloadShaderBuffer(ssboB);
rl.rlUnloadShaderBuffer(transfertSSBO);

-- Unload compute shader programs
rl.rlUnloadShaderProgram(golTransfertProgram)
rl.rlUnloadShaderProgram(golLogicProgram)

rl.UnloadTexture(whiteTex) -- Unload white texture
rl.UnloadShader(golRenderShader) -- Unload rendering fragment shader

rl.CloseWindow() -- Close window and OpenGL context
