local keywords = {
  "int", "long", "short", "char", "float", "double",
  "uint8_t", "uint16_t", "uint32_t", "uint64_t",
  "const", "unsigned", "register",
  "void", "intptr_t", "bool"
}

local structs = {
  "Vector2", "Vector3", "Vector4", "Quaternion",
  "Matrix", "Color", "Rectangle", "Image", "Texture", "Texture2D",
  "RenderTexture", "NPatchInfo", "GlyphInfo", "Font",
  "Camera", "Camera2D", "Mesh", "Shader", "MaterialMap",
  "Material", "Model", "Transform", "BoneInfo", "ModelAnimation",
  "Ray", "RayCollision", "BoundingBox", "Wave", "Sound", "Music",
  "AudioStream", "VrDeviceInfo", "Camera3D", "RenderTexture2D",
  "TextureCubemap", "TraceLogCallback", "PhysicsBody",
  "GestureEvent", "GuiStyle", "GuiTextBoxState",
  "TraceLogCallback", "VertexBuffer", "DrawCall", "RenderBatch",
  "ShaderAttributeDataType", "MaterialMapIndex", "VrStereoConfig",
  "FilePathList", "AudioCallback", "AutomationEvent", "AutomationEventList"
}

local rl_structs = {
  "rlTraceLogLevel", "rlPixelFormat", "rlTextureFilter",
  "rlBlendMode", "rlShaderLocationIndex", "rlShaderUniformDataType",
  "rlShaderAttributeDataType", "rlFramebufferAttachType",
  "rlFramebufferAttachTextureType", "rlVertexBuffer", "rlDrawCall",
  "rlRenderBatch"
}

local functions = {}
local proto = {}

local counter = 0
local file = io.open(arg[1], "wb")
local modules = { "api" }
local funcname

local custom_support = {
  ["rlgl"] = function (line)
    return line:gsub("([%s*]+)(rl%w+)", function (pre, part)
      functions[#functions + 1] = part
      funcname = part
      counter = counter + 1

      if counter == 2 then
        print("WARN: Multiple matches for: " .. line)
      end

      return "(*)"
    end)
  end
}

for i=2,#arg do
  modules[i] = arg[i]
end

file:write [[
struct raylua_bind_entry {
  const char *name;
  const char *proto;
  void *ptr;
};

struct raylua_bind_entry raylua_entries[] = {
]]

for _,modname in ipairs(modules) do
  for line in io.lines("tools/" .. modname .. ".h") do
    if line:sub(1, 2) ~= "//" then
      if line:sub(1, 1) == "#" then
        file:write("  " .. line .. "\n")
      else
        counter = 0
        funcname = nil

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

          for i,s in ipairs(rl_structs) do
            if part == s then
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
          funcname = part
          counter = counter + 1

          if counter == 2 then
            print("WARN: Multiple matches for: " .. line)
          end

          return "(*)"
        end)

        -- Strip spaces
        line = line:gsub("([(),*.])%s+(%w)", function (a, b) return a .. b end)
        line = line:gsub("(%w)%s+([(),*.])", function (a, b) return a .. b end)

        proto[#proto + 1] = line

        if funcname and line then
          file:write(string.format('  { "%s", "%s", &%s },\n', funcname, line, funcname))
        elseif counter == 0 then
          print("WARN: Invalid entry", funcname, line)
        end
      end
    end
  end
end

assert(#proto == #functions, "Mismatching proto and function count : " ..
  #proto .. " ~= " .. #functions)

print(string.format("Bound %d functions.", #proto))

file:write '  { NULL, NULL, NULL },\n'
file:write "};\n"

file:close()
