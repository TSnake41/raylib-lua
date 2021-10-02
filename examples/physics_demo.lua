local screenWidth = 800
local screenHeight = 450

rl.SetConfigFlags(rl.FLAG_MSAA_4X_HINT)

rl.InitWindow(screenWidth, screenHeight, "Physac [raylua] - Physics demo")
local logoX = screenWidth - rl.MeasureText("Physac", 30) - 10
local logoY = 15

local needsReset = false

rl.InitPhysics()

local floor = rl.CreatePhysicsBodyRectangle({ screenWidth/2, screenHeight }, 500, 100, 10)
floor.enabled = false

local circle = rl.CreatePhysicsBodyCircle({ screenWidth/2, screenHeight/2 }, 45, 10)
circle.enabled = false

rl.SetTargetFPS(60)

while not rl.WindowShouldClose() do
  rl.UpdatePhysics()

  if needsReset then
    floor = rl.CreatePhysicsBodyRectangle({ screenWidth/2, screenHeight }, 500, 100, 10)
    circle = rl.CreatePhysicsBodyCircle({ screenWidth/2, screenHeight/2 }, 45, 10)

    floor.enabled = false
    circle.enabled = false

    needsReset = false
  end

  if rl.IsKeyPressed(string.byte("R")) then
    rl.ResetPhysics()
    needsReset = true
  end

  if rl.IsMouseButtonPressed(rl.MOUSE_BUTTON_LEFT) then
    rl.CreatePhysicsBodyPolygon(rl.GetMousePosition(), rl.GetRandomValue(20, 80), rl.GetRandomValue(3, 8), 10);
  elseif rl.IsMouseButtonPressed(rl.MOUSE_BUTTON_RIGHT) then
    rl.CreatePhysicsBodyCircle(rl.GetMousePosition(), rl.GetRandomValue(10, 45), 10)
  end

  local bodiesCount = rl.GetPhysicsBodiesCount()

  for i=0,bodiesCount do
    local body = rl.GetPhysicsBody(i)

    if body ~= nil and (body.position.y > screenHeight*2) then
      print("Destroyed " .. tostring(body))
      rl.DestroyPhysicsBody(body)
    end
  end

  rl.BeginDrawing()
  rl.ClearBackground(rl.BLACK)

  bodiesCount = rl.GetPhysicsBodiesCount()
  for i=0,bodiesCount-1 do
    local body = rl.GetPhysicsBody(i)

    if body ~= nil then
      local vertexCount = rl.GetPhysicsShapeVerticesCount(i)
      for j=0,vertexCount-1 do
        local vertexA = rl.GetPhysicsShapeVertex(body, j);

        local jj = ((j + 1) < vertexCount) and (j + 1) or 0
        local vertexB = rl.GetPhysicsShapeVertex(body, jj);

        rl.DrawLineV(vertexA, vertexB, rl.GREEN)
      end
    end
  end

  rl.DrawText("Left mouse button to create a polygon", 10, 10, 10, rl.WHITE);
  rl.DrawText("Right mouse button to create a circle", 10, 25, 10, rl.WHITE);
  rl.DrawText("Press 'R' to reset example", 10, 40, 10, rl.WHITE);

  rl.DrawText("Physac", logoX, logoY, 30, rl.WHITE);
  rl.DrawText("Powered by", logoX + 50, logoY - 7, 10, rl.WHITE);

  rl.EndDrawing()
end

rl.ClosePhysics()
rl.CloseWindow()
