local repl = require 'repl.console'
local rcfile_loaded = repl:loadplugin 'rcfile'

if not rcfile_loaded then
  local has_linenoise = pcall(require, 'linenoise')

  if has_linenoise then
    repl:loadplugin 'linenoise'
  else
    pcall(repl.loadplugin, repl, 'rlwrap')
  end

  repl:loadplugin 'history'
  repl:loadplugin 'completion'
  repl:loadplugin 'autoreturn'
end

print('Lua REPL ' .. tostring(repl.VERSION))
repl:run()
