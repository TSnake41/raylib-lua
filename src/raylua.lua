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

local load = loadstring

raylua.version = "v0.9 rayfork"

function raylua.repl()
  print("> raylua " .. raylua.version .. " <")
  print "Type 'q' to quit."
  print ""

  while true do
    io.write "> "
    local line = io.read "l"
    if line == "q" then
      break
    end

    local f, err = loadstring(line)

    if f then
      local status, err = pcall(f)
      if not status then
        print(err)
      end
    else
      print(err)
    end
  end
end

package.path = "?.lua;?/init.lua"

if raylua.loadfile then
  -- Change the second loader to load files using raylua.loadfile
  package.loaders[2] = function (name)
    for path in package.path:gmatch "([^;]+);?" do
      name = name:gsub("%.", "/")
      path = path:gsub("?", name)

      local content, err = raylua.loadfile(path)
      if content then
        local f, err = load(content, path)
        assert(f, err)

        return f
      end
    end

    return
  end

  print "RAYLUA: Load main.lua from payload."
  require "main"

  if not raylua.isrepl then
    -- Keep launching the repl even with `loadfile` defined.
    return
  end
end

if arg and arg[1] then
  dofile(arg[1])
  return
end

if raylua.isrepl then
  print "RAYLUA: Go to repl."
  raylua.repl()
end
