![raylib-lua logo](assets/logo.png)

[![release](https://img.shields.io/github/v/release/TSnake41/raylib-lua?style=flat-square)](https://github.com/TSnake41/raylib-lua/releases/latest)
[![downloads](https://img.shields.io/github/downloads/tsnake41/raylib-lua/total?style=flat-square)](https://github.com/TSnake41/raylib-lua/releases)

## raylib-lua

[LuaJIT](https://luajit.org/)-based binding for [raylib](https://www.raylib.com/), a simple and easy-to-use
library to learn video game programming.

This binding is partially based on [raylib-wren/wray](https://github.com/TSnake41/raylib-wren).

### Usage of `raylua_s`

`raylua_s` is the **script-mode binary** of raylib-lua.
Without any argument, `raylua_s` gets you into the REPL (the read-eval-print loop, i.e. the interactive interpretor) which gives you a minimal Lua
shell that allows you to run Lua code from a terminal (aka command prompt, console, or shell).

You can give the name of a Lua file as an argument to `raylua_s` to run the specified Lua file.

### Usage of `raylua_e`

`raylua_e` is the **embedding-mode binary** of raylib-lua.

This binary allows you to build standalone raylib applications from Lua code. This is useful both for testing and for packaging and distribution.

There are 3 ways to use it :
 - **zip mode** :
     If you specify a zip file as an argument to `raylua_e`, this zip file's contents 
     will be used to build the application. `raylua_e` expects the zip file to contain 
     a `main.lua` file, which is the entry point of the application (i.e. `main.lua` is 
     where you want your program to start running).

        # Windows
        raylua_e someGame.zip

        # Unix
        ./raylua_e someGame.zip

 - **directory mode** :
     This mode is similar to zip mode, except that it automatically builds the zip file 
     payload from the specified directory and then uses that zip file to build the application.

        # project/ is a directory

        # Windows
        raylua_e project

        # Unix
        ./raylua_e project

 - **Lua mode** :
     Alternatively, if your program is contained within a single Lua file, then you can 
     build the executable directly from a single Lua file.

        # Windows
        raylua_e core_basic_window.lua

        # Unix
        ./raylua_e core_basic_window.lua

Using `require` in embedded mode works as expected but `dofile` and `loadfile`
may not work as expected as these functions load from an external file rather
than from `package` loaders.

### Usage of `raylua_r` (Windows only)

On Windows systems, you may notice that there is an additional executable (named `raylua_r`) that is included with the pre-built Windows release download of this raylib-lua bindings library (or which you can build yourself). The purpose of `raylua_r` is to remove the extra terminal window (aka command prompt, console, or shell) that would normally open alongside the graphical raylib window whenever you run it. So, if you don't want that additional text window to show then you can use `raylua_r` instead of `raylua_e` to build your project without it.

Other operating systems may not consistently support this mechanism, and so there is currently no corresponding `raylua_r` for them.

For more information on the origin of `raylua_r`, see [this old pull request](https://github.com/TSnake41/raylib-lua/pull/3) where this feature was originally added.

### Building / Updating raylib / Contribution

To build raylib-lua from source, you need to take care that submodules are
imported. Otherwise, if submodules haven't been imported or if you are unsure:

```shell
git submodule init
git submodule update
```

This may take some time depending on network bandwidth.
Afterwards, raylib-lua should build as expected using the `make` tool with a working C compiler.

If you are unfamliar with `make`, see [the wikipedia for Make](https://en.wikipedia.org/wiki/Make_(software)). It is a widely used build automation tool that is most often used on Unix-like systems (such as Linux and BSD).

Support for `make` on Windows can sometimes be poor though, so remember that there is a download button at the top of this page for if you just want ready-to-use copies of the `raylua_s`, `raylua_e`, and `raylua_r` executable files for Windows. That may be the easiest way to get started for many users. (It can be easy to overlook the download buttons on GitHub pages if you aren't paying close enough attention, so heads-up on that.)

A working Lua interpreter is needed. By default, the luajit interpreter built
along with `libluajit.a` is used. In case of cross-compiling, you may want to
change which Lua interpreter is used to one your system supports.
You can specify the interpreter with the `LUA` variable.

If you need to update the raylib binding, there are a few tasks you will need to do:
 - Update the `tools/api.h` function signatures. Keep the file clean, with exactly one function per line.
 - Update the struct definitions in `src/raylib.lua`.

### Loading embedded ressources

Currently, raylib-lua supports loading resources from payloads using the
raylib API. You can also arbitrarily load files from payloads using
`raylua.loadfile`, which returns a boolean indicating success or failure and the file's content.

### Making structs

To make raylib structs, you need to use the LuaJIT FFI.
```lua
local ffi = require "ffi"
```

After importing the necessary package (as above), use `ffi.new` to make a struct, e.g. `ffi.new("Color", r, g, b, a)`.

However, many functions in raylib won't require the use of such structs, so there's no need to worry until you actually need this.

#### Note concerning pointers

You can use the `rl.ref` function to build a pointer from a cdata struct.
The `rl.ref` function only works with cdata structs. In the case of primitive 
(non-struct) cdata in contrast, you will need to make an array and pass it directly.

e.g :
```lua
local int_ptr = ffi.new "int [1]"
local data = tostring(rl.LoadFileData("test.txt", int_ptr))
local count = tonumber(int_ptr[0])
```

### Simple example to test if your raylib-lua is working

```lua
rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)

rl.InitWindow(800, 450, "raylib [core] example - basic window")

while not rl.WindowShouldClose() do
	rl.BeginDrawing()

	rl.ClearBackground(rl.RAYWHITE)
	rl.DrawText("Congrats! You created your first window!", 190, 200, 20, rl.LIGHTGRAY)

	rl.EndDrawing()
end

rl.CloseWindow()
```

### Compatibility

raylib-lua (raylua) currently uses raylib 5.5 API. See [compat.lua](https://github.com/TSnake41/raylib-lua/blob/master/src/compat.lua) for more info.

[physac](https://github.com/victorfisac/Physac) and [rlgl](https://github.com/raysan5/raylib/blob/master/src/rlgl.h) modules are also built-in by default.
[raygui](https://github.com/raysan5/raygui) is supported, but is minimally tested. 

Please report any issues you have with raygui with raylib-lua (raylua) on GitHub or on the #raylib-lua subchannel of [the raylib Discord server](https://discord.gg/raylib). To find the #raylib-lua page, join the raylib Discord server by clicking the above link, then scroll down on the left side of Discord's list of channels until you find #raylib-lua and click it. You can chat and ask questions there.

#### Global API

You can make raylib-lua (raylua) partially compatible with
[original raylib-lua](https://github.com/raysan5/raylib-lua) or
[raylib-lua-sol](https://github.com/RobLoach/raylib-lua-sol) with the global API by
adding `setmetatable(_G, { __index = rl })` on the first line.

This will allow direct use of the raylib binding through globals instead of through the `rl` table.

You have an example of this in `lua_global_api.lua`.

### Editor support

There is limited autocompletion support for VSCode and other EmmyLua frontends using [this definition file](https://github.com/TSnake41/raylib-lua/blob/master/tools/autocomplete/plugin.lua).

Check [this page](https://github.com/LuaLS/lua-language-server/wiki/Libraries#custom) for more information.

It may also be possible to get auto-complete working in [ZeroBrane Studio](https://github.com/pkulchenko/ZeroBraneStudio) (a popular IDE exclusively designed for Lua) according to the information on [this page](https://github.com/Rabios/raylua/blob/master/zerobrane/README.md) written by a different Lua raylib binding author, which mentions that their own autocomplete implementation ([raylua](https://github.com/Rabios/raylua)) coincedentally has some compatibility with this binding ([raylib-lua](https://github.com/TSnake41/raylib-lua)) too.

#### Debugging

You can use [Local Lua Debugger for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=tomblind.local-lua-debugger-vscode)
to provide debugging support with Visual Studio Code.
You need to add this at the beginning of your code to use it : 
```lua
do local f = getmetatable(rl).__index;rawset(rl, "__index", function (_, k) return select(2, pcall(f, _, k)) end) end
package.path = package.path .. os.getenv "LUA_PATH"
local lldebugger = require "lldebugger"; lldebugger.start()
```
You also need to setup a launch configuration in Visual Studio Code to run `raylua_s` with the debugger attached, e.g.
```json
{
    "type": "lua-local",
    "request": "launch",
    "name": "(Lua) Launch",
    "cwd": "${workspaceFolder}",
    "program": { "command": "PATH TO raylua_s" },
    "args": [ "main.lua OR ${file} OR WHATEVER" ]
}
```
This debugger doesn't support pausing at arbitrary unspecified points. You will need to place a breakpoint before executing your code
to get an actual steppable debug working. Otherwise, an error will need to be thrown in the application to get the debugging to trigger.

This debugger has significant overhead, expect a potentially large performance loss in intensive projects if you use it.

### Other bindings

raylib-lua (raylua) is not the only Lua binding for raylib.

There are some other bindings, which may or may not be up to date.

[RobLoach/raylib-lua-sol](https://github.com/RobLoach/raylib-lua-sol)

[raysan5/raylib-lua](https://github.com/raysan5/raylib-lua/)

[HDPLocust/raylib-luamore](https://github.com/HDPLocust/raylib-luamore)

[alexander-matz ffi binding](https://gist.github.com/alexander-matz/f8ee4eb9fdf676203d70c1e5e329a6ec)

[darltrash/raylib-luajit](https://github.com/darltrash/raylib-luajit)

[Rabios/raylua](https://github.com/Rabios/raylua)

### Licence

> Copyright (C) 2023 Astie Teddy
> 
> Permission to use, copy, modify, and/or distribute this software for any
> purpose with or without fee is hereby granted, provided that the above
> copyright notice and this permission notice appear in all copies.
> 
> THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
> OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
> CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
