local keywords = {
  "int", "long", "short", "char", "float", "double",
  "uint8_t", "uint16_t", "uint32_t", "uint64_t",
  "const", "unsigned", "register",
  "void", "intptr_t", "bool"
}

local structs = {
  "Vector2", "Vector3", "Vector4", "Quaternion",
  "Matrix", "Color", "Rectangle", "Image", "Texture", "Texture2D",
  "RenderTexture", "NPatchInfo", "CharInfo", "Font",
  "Camera", "Camera2D", "Mesh", "Shader", "MaterialMap",
  "Material", "Model", "Transform", "BoneInfo", "ModelAnimation",
  "Ray", "RayHitInfo", "BoundingBox", "Wave", "Sound", "Music",
  "AudioStream", "VrDeviceInfo", "Camera3D", "RenderTexture2D",
  "TextureCubemap", "TraceLogCallback", "PhysicsBody",
  "GestureEvent", "GuiStyle", "GuiTextBoxState"
}

local functions = {}
local proto = {}

local counter = 0

local custom_support = {
  ["rlgl"] = function (line)
    return line:gsub("[%s*]+(rl%w+)", function (part)
      functions[#functions + 1] = part
      counter = counter + 1

      if counter == 2 then
        print("WARN: Multiple matches for: " .. line)
      end

      return "(*)"
    end)
  end
}

local file = io.open(arg[1], "wb")
local modules = { "api" }

for i=2,#arg do
  modules[i] = arg[i]
end

for _,modname in ipairs(modules) do
  for line in io.lines("tools/" .. modname .. ".h") do
    if custom_support[modname] then
      line = custom_support[modname](line)
    end

    line = line:gsub("(%W)([%l%d][%w_]*)", function (before, part)
      for i,keyword in ipairs(keywords) do
        if part == keyword
          or part == "t" then -- uintX_t workaround
          return before .. part
        end
      end

      return before
    end)

    line = line:gsub("%u%w+", function (part)
      for i,struct in ipairs(structs) do
        if part == struct then
          return part
        end
      end

      functions[#functions + 1] = part
      counter = counter + 1

      if count == 2 then
        print("WARN: Multiple matches for: " .. line)
      end

      return "(*)"
    end)

    -- Strip spaces
    line = line:gsub("([(),*.])%s+(%w)", function (a, b) return a .. b end)
    line = line:gsub("(%w)%s+([(),*.])", function (a, b) return a .. b end)

    proto[#proto + 1] = line
  end
end

assert(#proto == #functions, "Mismatching proto and function count : " ..
  #proto .. " ~= " .. #functions)

file:write [[
struct raylua_bind_entry {
  const char *name;
  const char *proto;
  void *ptr;
};

struct raylua_bind_entry raylua_entries[] = {
]]

for i=1,#proto do
  local name, proto = functions[i], proto[i]
  file:write(string.format('{ "%s", "%s", &%s },\n', name, proto, name))
end

file:write '{ NULL, NULL, NULL },\n'
file:write "};\n"

file:close()
