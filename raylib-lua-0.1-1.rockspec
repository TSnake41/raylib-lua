package = "raylib-lua"
version = "0.1-1" -- Update version based on your binding's state
source = {
    url = "https://github.com/TSnake41/raylib-lua/archive/refs/tags/v0.1.tar.gz",
    dir = "raylib-lua-0.1" -- Directory inside the extracted source
}
description = {
    summary = "Lua bindings for Raylib",
    detailed = [[
        raylib-lua is a Lua binding for Raylib, a simple and easy-to-use library
        for game development. This binding allows you to use Raylib in Lua.
    ]],
    homepage = "https://github.com/TSnake41/raylib-lua",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1",
    "raylib >= 4.0" -- Ensure raylib is installed
}
build = {
    type = "builtin",
    modules = {
        ["raylib"] = {
            sources = { "src/raylib.c" },
            libraries = { "raylib" },
        }
    }
}
