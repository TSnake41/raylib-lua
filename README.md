![raylib-lua logo](assets/logo.png)

## raylib-lua

[LuaJIT](https://luajit.org/)-based binding for [raylib](https://www.raylib.com/), a simple and easy-to-use
library to learn videogames programming.

This binding is partially based on [raylib-wren/wray](https://github.com/TSnake41/raylib-wren).

### Usage (raylua_s)

raylua_s is the script-mode binary of raylib-lua.
Without any argument, you get into the REPL which gives you a minimal Lua
shell that allows you to run Lua code from terminal.

You can specify a Lua file as argument to run the specified Lua file.

### Usage (raylua_e)

raylua_e is the embedding-mode binary of raylib-lua.

This binary allows you to build standalone raylib applications from Lua code.

There are 3 ways to use it :
 - zip mode :
     If you specify a zip file as argument, this zip will be used as payload
     application, this file expects to have a `main.lua` which is the entry point
     of the application.
 - directory mode :
     Similar to zip mode except that it automatically build the zip payload from
     the specified directory.
 - lua mode :
     Build the executable from a single Lua file.

Using `require` in embedded mode works as expected but `dofile` and `loadfile`
may not work as expected as these functions load from a external file rather
than from `package` loaders.

### Building / Updating Raylib / Contribution

To build raylib-lua from source, you need to take care that submodules are
imported, if not or you are unsure :

```shell
git submodule init
git submodule update
```

A Lua working interpreter is needed, by default luajit is used, to override it,
edit LUA variable in `makefile`.

This make take some time depending on network bandwidth.
Then, raylib-lua should build as expected using `make` tool with a working C compiler.

If you need to update raylib binding, there are few tasks to do :
 - update `tools/api.h` functions signatures, keep file clean with exactly one function per line.
 - update struct definitions in `src/raylib.lua`

### Licence

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
