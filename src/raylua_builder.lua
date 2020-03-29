--[[
  Copyright (C) 2020 Astie Teddy

  Permission to use, copy, modify, and/or distribute this software for any
  purpose with or without fee is hereby granted, provided that the above
  copyright notice and this permission notice appear in all copies.

  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
  OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
  CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
]]

--[[
  Uses miniz :

  Copyright 2013-2014 RAD Game Tools and Valve Software
  Copyright 2010-2014 Rich Geldreich and Tenacious Software LLC
  All Rights Reserved.

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.
]]

local ffi = require "ffi"

ffi.cdef "typedef struct FILE FILE;"
local append_file_offset = ffi.cast("void (*)(FILE *, FILE *, FILE *)", append_file_offset)

local self_path = arg[0]
local input_path = arg[1]

print ">> Raylua builder <<"
if #arg == 0 then
  print "TODO: Improve builder usage."

  print "Usage: raylua_e <input> [output]"
  return
end

local t = get_type(input_path)

local function path_concat(...)
  return table.concat({ ... }, "/")
end

if ffi.os == "Windows" and self_path:sub("-4") ~= ".exe" then
  self_path = self_path .. ".exe"
end

print("Self is " .. self_path)

if t == "directory" then
  local output = arg[2]

  if not output then
    if ffi.os == "Windows" then
      output = output .. ".exe"
    else
      output = output .. ".elf"
    end
  end

  print("Building " .. output)

  local builder = builder_new(self_path, output)
  assert(builder, "Can't initialize builder")

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
