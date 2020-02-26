local load = loadstring

if raylua then
  -- Change the second loader to load files using raylua.loadfiles
  package.loaders[2] = function (name)
    for path in package.path:gmatch "([^;]+);?" do
      path = path:gsub("?", name)

      local status, content = raylua.loadfiles(path)
      if status then
        local f, err = load(content)
        assert(f, err)

        return f
      end
    end

    return nil
  end
end

require "main"
