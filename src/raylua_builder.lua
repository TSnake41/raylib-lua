local t = get_type(input_path)
local ffi = require "ffi"

print ">> Raylua builder <<"

ffi.cdef "typedef struct raylua_builder raylua_builder;"

local builder_new = ffi.cast("raylua_builder *(*)(const char *, const char *)", builder_new)
local builder_close = ffi.cast("void (*)(raylua_builder *)", builder_close)
local builder_add = ffi.cast("void (*)(raylua_builder *, const char *, const char *)", builder_add)

local function path_concat(...)
  return table.concat({ ... }, "/")
end

if ffi.os == "Windows" and self_path:sub("-4") ~= ".exe" then
  self_path = self_path .. ".exe"
end

print("Self is " .. self_path)

if t == "directory" then
  local path = input_path

  if ffi.os == "Windows" then
    path = path .. ".exe"
  else
    path = path .. ".elf"
  end

  print("Building " .. path)

  local builder = builder_new(self_path, path)
  assert(builder ~= ffi.new("void *", nil), "Can't initialize builder")

  local have_main = false

  local function add_dir(root, dir)
    for i,file in ipairs(list_dir(path_concat(root, dir))) do
      if file ~= ".." then
        local partial_file_path, full_file_path

        if dir then
          partial_file_path = path_concat(dir, file)
          full_file_path = path_concat(root, dir, file)
        else
          partial_file_path = file
          full_file_path = path_concat(root, file)
        end

        if partial_file_path == "main.lua" then
          have_main = true
        end

        local t = get_type(full_file_path)

        if t == "file" then
          print("Adding file " .. partial_file_path)
          builder_add(builder, full_file_path, partial_file_path)
        elseif t == "directory" then
          print("Adding directory " .. partial_file_path .. "/")
          add_dir(root, partial_file_path)
        else
          print("Unknown file type " .. partial_file_path)
        end
      end
    end
  end

  add_dir(input_path, nil)

  if not have_main then
    print("WARN: main.lua is missing, your executable may not run")
  end

  builder_close(builder)
elseif t == "file" then
  local ext = input_path:sub(-4)

  -- Remove extension
  local path = input_path:sub(0, #input_path - 4)

  if ffi.os == "Windows" then
    path = path .. ".exe"
  else
    path = path .. ".elf"
  end

  print("Building " .. path)

  if ext == ".zip" then
    print "Build from zip file."

    local dest = assert(io.open(path, "wb"), "Can't open destination file.")
    local source = assert(io.open(self_path, "rb"), "Can't open self file.")
    local input = assert(io.open(input_path, "rb"), "Can't open zip file.")

    append_file_offset(output, source, input)

    dest:close()
    source:close()
    input:close()
  elseif ext == ".lua" then
    print "Build from lua file."

    local builder = builder_new(self_path, path)
    builder_add(builder, input_path, "main.lua")
    builder_close(builder)
  end
end

print "Done"
