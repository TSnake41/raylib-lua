local keywords = {
  "int", "long", "short", "char", "float", "double",
  "uint8_t", "uint16_t", "uint32_t", "uint64_t",
  "const", "unsigned", "register", "va_list";
  "void", "intptr_t", "bool"
}

local functions = {}
local proto = {}

local counter = 0

local custom_support = {
  ["rayfork"] = function (line)
    return line:gsub("(rf_[^( ]+)(%()", function (part)
      functions[#functions + 1] = part
      counter = counter + 1

      if counter == 2 then
        print("WARN: Multiple matches for: " .. line)
      end

      return "(*)("
    end)
  end
}

local file = io.open(arg[1], "wb")
local modules = { }

for i=1,#arg do
  modules[i] = arg[i + 1]
end

for _,modname in ipairs(modules) do
  for line in io.lines("tools/" .. modname .. ".h") do
    if custom_support[modname] then
      line = custom_support[modname](line)
    end

    counter = 0

    line = line:gsub("[^ *(),]+", function (part)
      for _,keyword in pairs(keywords) do
        if part == keyword then
          return part
        end
      end

      return part:sub(0, 3) == "rf_" and part or ""
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
struct rf_lua_bind_entry {
  const char *name;
  const char *proto;
  void *ptr;
};

struct rf_lua_bind_entry rayfork_entries[] = {
]]

for i=1,#proto do
  local name, proto = functions[i], proto[i]
  file:write(string.format('{ "%s", "%s", &%s },\n', name, proto, name))
end

file:write '{ NULL, NULL, NULL },\n'
file:write "};\n"

file:close()
