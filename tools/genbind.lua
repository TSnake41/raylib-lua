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
  "TextureCubemap", "TraceLogCallback"
}

local functions = {}
local proto = {}

for line in io.lines "tools/api.h" do
  line = line:gsub("(%W)([%l%d]%w*)", function (before, part)
    for i,keyword in ipairs(keywords) do
      if part == keyword then
        return before .. part
      end
    end

    return before
  end)

  local count = 0

  line = line:gsub("%u%w+", function (part)
    for i,struct in ipairs(structs) do
      if part == struct then
        return part
      end
    end

    functions[#functions + 1] = part
    count = count + 1

    if count == 2 then
      print("WARN: Multiple match for: " .. line)
    end

    return "(*)"
  end)

  proto[#proto + 1] = line:gsub(";", "")
end

assert(#proto == #functions, "Mismatching proto and function count.")

local file = io.open(arg[1], "w")
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
