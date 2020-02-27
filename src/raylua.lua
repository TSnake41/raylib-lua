local load = loadstring

if raylua.loadfile then
  package.path = "?.lua"

  -- Change the second loader to load files using raylua.loadfile
  package.loaders[2] = function (name)
    for path in package.path:gmatch "([^;]+);?" do
      path = path:gsub("?", name)

      local status, content = raylua.loadfile(path)
      if status then
        local f, err = load(content)
        assert(f, err)

        return f
      end
    end

    return nil
  end

  print "[RAYLUA] Load main.lua from payload."
  require "main"
  return
end

if arg[1] then
  dofile(arg[1])
else
  -- Run small REPL
  print ">> raylua WIP repl <<"
  print ""

  while true do
    io.write "> "
    local line = io.read "l"

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
