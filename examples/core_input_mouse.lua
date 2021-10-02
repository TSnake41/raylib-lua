rl.SetTraceLogLevel(rl.LOG_WARNING)
rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)
rl.InitWindow(800, 450, "raylib [core] example - mouse input");

local ball_position = rl.new("Vector2", -100, -100)
local ball_color = rl.DARKBLUE

while not rl.WindowShouldClose() do
    ball_position.x = rl.GetMouseX()
    ball_position.y = rl.GetMouseY()

    if rl.IsMouseButtonPressed(rl.MOUSE_BUTTON_LEFT) then
      ball_color = rl.MAROON
    elseif rl.IsMouseButtonPressed(rl.MOUSE_BUTTON_MIDDLE) then
      ball_color = rl.LIME
    elseif rl.IsMouseButtonPressed(rl.MOUSE_BUTTON_RIGHT) then
      ball_color = rl.DARKBLUE
    end

    rl.BeginDrawing()

    rl.ClearBackground(rl.RAYWHITE)
    rl.DrawCircleV(ball_position, 40, ball_color)
    rl.DrawText("move ball with mouse and click mouse button to change color",
      10, 10, 20, rl.DARKGRAY)
    
    rl.EndDrawing()
end

rl.CloseWindow()