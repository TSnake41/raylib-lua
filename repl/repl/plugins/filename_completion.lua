local utils = require 'repl.utils'
local lfs = require 'lfs'

repl:requirefeature 'completion'

local function guess_directory_separator(file_name)
  return file_name:match('/') or
         file_name:match('\\') or
         '/'
end

local function split_parent_directory(file_name)
  local parent_directory, directory_entry =
    file_name:match('^(.+)[\\/](.+)$')
  if not parent_directory then
    parent_directory = '.'
    directory_entry = file_name
  end
  return parent_directory, directory_entry
end

local function is_ignored_directory_entry(entry)
  return entry == '.' or
         entry == '..'
end

local function replace_end_of_string(str, suffix, replacement)
  assert(str:sub(-#suffix) == suffix)
  return str:sub(1, -(#suffix+1)) .. replacement
end

local function complete_file_name(file_name, expr, callback)
  local directory, partial_entry = split_parent_directory(file_name)
  for entry in lfs.dir(directory) do
    if not is_ignored_directory_entry(entry) and
       entry:find(partial_entry, 1, true) == 1 then
      callback(replace_end_of_string(expr, partial_entry, entry))
    end
  end
end

local function complete_directory(directory, expr, callback)
  for entry in lfs.dir(directory) do
    if not is_ignored_directory_entry(entry) then
      callback(expr..entry)
    end
  end
end

function after:complete(expr, callback)
  if utils.ends_in_unfinished_string(expr) then
    local file_name = expr:match('[%w@/\\.-_+#$%%{}[%]!~ ]+$')
    if file_name then
      if file_name:find('[/\\]$') then
        complete_directory(file_name, expr, callback)
      else
        complete_file_name(file_name, expr, callback)
      end
    else
      complete_directory('.', expr, callback)
    end
  end
end
