---Internal raylua stuff
raylua = {}
---@type string
---raylib-lua version string
raylua.version = ""
---Start a repl, and block until repl is active.
function raylua.repl() end
---@type function|nil
---@return string|nil content, string|nil error
---@param path string
---Load an internal payload file.
---Only exists in raylua_e or raylua_r 
function raylua.loadfile(path) end