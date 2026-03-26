#!/usr/bin/env lua
-- Update bindings script - extracts API from raylib headers

local API_PREFIXES = {
  "RLAPI", "CONFAPI", "GLAPI", "RMAPI", "PHYSACDEF", "RAYGUIAPI"
}

local function has_api_prefix(line)
  for _, prefix in ipairs(API_PREFIXES) do
    if line:match("^" .. prefix .. " ") then
      return prefix
    end
  end
  return nil
end

local function extract_api(source_file, output_file)
  local funcs = {}
  local source = io.open(source_file, "rb")
  if not source then
    print("ERROR: Cannot open " .. source_file)
    return false
  end

  local content = source:read("*all")
  source:close()

  for line in content:gmatch("[^\r\n]+") do
    local trimmed = line:gsub("^%s+", ""):gsub("%s+$", "")

    -- Skip lines with function bodies (inline implementations)
    -- Also skip variable assignments (lines with = but no function call pattern after)
    if trimmed:match("{") or trimmed:match("}") then
      -- Skip implementation lines
    elseif trimmed:match("=") then
      -- Skip variable declarations/assignments - not function declarations
    elseif trimmed:match("QUERY") or trimmed:match("__stdcall") or trimmed:match("WIN32") or trimmed:match("_WIN32") or trimmed:match("DLL-export") then
      -- Skip Windows-specific functions
    else
      local prefix = has_api_prefix(trimmed)
      local func = nil
      
      if prefix then
        func = trimmed:gsub(prefix .. " ", "")
      elseif trimmed:match("^void ") or trimmed:match("^bool ") or trimmed:match("^int ") or 
             trimmed:match("^float ") or trimmed:match("^unsigned ") or trimmed:match("^const ") or
             trimmed:match("^Vector2 ") or trimmed:match("^float ") then
        if trimmed:match("%w+%s*%(") then
          func = trimmed
        end
      end

      if func then
        func = func:gsub("%s+//.*$", "")
        func = func:gsub("%s*;%s*$", "")
        local name = func:match("([%w_]+)%s*%(")
        if name and name:sub(1, 2) ~= "__" and not func:match("^#") then
          funcs[name] = func
        end
      end
    end
  end

  local out = io.open(output_file, "w")
  if not out then
    print("ERROR: Cannot open " .. output_file)
    return false
  end

  local sorted = {}
  for name in pairs(funcs) do table.insert(sorted, name) end
  table.sort(sorted)

  for _, name in ipairs(sorted) do
    out:write(funcs[name] .. ")\n")
  end

  out:close()
  print("Updated " .. output_file .. " with " .. #sorted .. " functions")
  return true
end

local modules = {
  { source = "raylib/src/raylib.h", output = "tools/api.h" },
  { source = "raylib/src/raymath.h", output = "tools/raymath.h" },
  { source = "raylib/src/rlgl.h", output = "tools/rlgl.h" },
  { source = "raylib/src/rgestures.h", output = "tools/gestures.h" },
  { source = "raylib/src/rcamera.h", output = "tools/rcamera.h" },
  { source = "physac/src/physac.h", output = "tools/physac.h" },
  { source = "raygui/src/raygui.h", output = "tools/raygui.h" },
}

local mode = arg[1] or "all"

if mode == "all" then
  print("Updating all bindings...")
  for _, m in ipairs(modules) do
    extract_api(m.source, m.output)
  end
  print("All bindings updated!")
elseif mode == "check" then
  print("Checking bindings...")
  for _, m in ipairs(modules) do
    local source = io.open(m.source, "rb")
    if source then
      local content = source:read("*all")
      source:close()
      local count = 0
      for _ in content:gmatch("\n") do count = count + 1 end
      print(m.source .. ": " .. count .. " lines")
    else
      print(m.source .. ": NOT FOUND")
    end
  end
else
  local m = nil
  for _, mod in ipairs(modules) do
    if mod.output:match(mode) then m = mod end
  end
  if m then
    extract_api(m.source, m.output)
  else
    print("Usage: lua update_bindings.lua [all|api|raymath|rlgl|gestures|rcamera|physac|raygui]")
  end
end