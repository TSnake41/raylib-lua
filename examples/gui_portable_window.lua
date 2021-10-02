local width, height = 1280, 720

rl.SetConfigFlags(rl.FLAG_WINDOW_UNDECORATED)
rl.InitWindow(width, height, "raygui - portable window")
rl.SetTargetFPS(75)

local mouse_pos = rl.new("Vector2", 0, 0)
local window_pos = rl.GetWindowPosition()
local pan_offset = rl.new("Vector2", mouse_pos)

local drag_window = false
local exit_window = false

while not exit_window and not rl.WindowShouldClose() do
  mouse_pos = rl.GetMousePosition()
  
  if rl.IsMouseButtonPressed(rl.MOUSE_BUTTON_LEFT) then
    if rl.CheckCollisionPointRec(mouse_pos, rl.new("Rectangle", 0, 0, width, 20)) then
      drag_window = true
      pan_offset = rl.new("Vector2", mouse_pos)
    end
  end
  
  if drag_window then
    window_pos = window_pos + mouse_pos - pan_offset
    
    if rl.IsMouseButtonReleased(rl.MOUSE_BUTTON_RIGHT) then
      drag_window = false
    end
    
    rl.SetWindowPosition(window_pos.x, window_pos.y)
  end
    
  rl.BeginDrawing()
  
  rl.ClearBackground(rl.RAYWHITE)
  exit_window = rl.GuiWindowBox(rl.new("Rectangle", 0, 0, width, height), "PORTABLE WINDOW")
  rl.DrawText(string.format("Mouse Position: [ %.0f, %.0f ]", mouse_pos.x, mouse_pos.y),
    10, 40, 10, rl.DARKGRAY)

  rl.EndDrawing()
end

rl.CloseWindow()