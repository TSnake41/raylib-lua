print "---@meta [raylib-lua]"
print "---@diagnostic disable"

print "---raylib-lua binding"
print "rl = {}"

-- Insert prelude
for line in io.lines "prelude.lua" do
  print(line)
end

local ffi_type_list = {}

for i=1,#arg do
  local content = loadfile(arg[i])()

  local function luaify(t)
    -- strings
    for _,v in ipairs { "void %*", "char %*" } do
      if string.find(t, v) then
        return 'string|lightuserdata'
      end
    end

    for _,v in ipairs { "char" } do
      if string.find(t, v) then
        return "number|string[]"
      end
    end

    for _,v in ipairs { "int", "long", "float", "double" } do
      if string.find(t, v) then
        return "number"
      end
    end

    local t = t:gsub(" ", "_"):gsub("*", "_ptr"):gsub("__", "_")
    if t:find "_ptr" then
      t = t .. "|lightuserdata"
    end

    return t
  end

  for _,enum in ipairs(content.enums) do
    print("---@alias " .. enum.name)
    for _,v in pairs(enum.values) do
      print(string.format("---| '%s'", v.name))
    end

    if enum.description ~= "" then
      print("---" .. enum.description)
    end

    print ""

    for _,v in pairs(enum.values) do
      if v.description ~= "" then
        print("---" .. v.description)
      end
      print(string.format("rl.%s = %u", v.name, v.value))
    end
  end

  for _,struct in ipairs(content.structs) do
    print(string.format("---@class %s%s", struct.name,
      (struct.description ~= "") and string.format(" @ %s", struct.description) or ""))

    print(string.format("---@alias %s_ptr %s", struct.name, struct.name))
    print(string.format("---@alias %s_ptr_ptr %s", struct.name, struct.name))

    if struct.name == "Texture" then
      print "---@alias Texture2D Texture"
    end
    if struct.name == "RenderTexture" then
      print "---@alias RenderTexture2D RenderTexture"
    end

    ffi_type_list[#ffi_type_list+1] = struct.name

    for _,field in pairs(struct.fields) do
      for n in field.name:gmatch "([^, ]+),?" do
        local arraySize = n:match "%[(.-)%]"
        if arraySize then
          n = n:match("(%S-)%[.-%]")
          field.type = string.format("%s[]", luaify(field.type), arraySize)
        end

        print(string.format('---@field %s %s%s', n, luaify(field.type), 
          (field.description ~= "") and string.format(" # %s", field.description) or ""))
      end
    end
    print(string.format('---Constructed using `rl.new("%s", ...)`', struct.name))
    print(string.format("local %s = {}", struct.name))
  end

  for _,func in ipairs(content.functions) do
    if func.name ~= "" then
      local arraySize

      local args = {}
      local vla = false

      for _,param in ipairs(func.params or {}) do
        if param.name == "end" then
          param.name = "end_"
        end

        if param.name ~= "" then
          arraySize = param.name:match "%[(.-)%]"
          if arraySize then
            param.name = param.name:match("(%S-)%[.-%]")
            param.type = string.format("%s[%d]", param.type, arraySize)
          end

          arraySize = param.name:match "%[(.-)%]"
          if arraySize then
            param.name = param.name:match("(%S-)%[.-%]")
            param.type = string.format("%s[%d]", luaify(param.type), arraySize)
          end

          print(string.format('---@param %s %s', param.name, luaify(param.type)))

          args[#args + 1] = param.name
        else
          vla = true
        end
      end

      if func.returnType and func.returnType ~= "void" then
        print(string.format('---@return %s', luaify(func.returnType)))
      end 

      if vla then
        print "---@vararg any"
      end

      if func.description ~= "" then
        print("---" .. func.description)
      end
      print(string.format("function rl.%s(%s%s) end", func.name, table.concat(args, ","), vla and ", ..." or ""))
    end
  end
end

print "---Create a new variable of ffi type `t`"
for i,t in ipairs(ffi_type_list) do
  print(string.format([[---@overload fun(t: '"%s"', ...): %s]], t, t))
end
print("function rl.new(...) end")