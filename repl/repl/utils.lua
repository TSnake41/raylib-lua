-- Copyright (c) 2011-2015 Rob Hoelz <rob@hoelz.ro>
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this software and associated documentation files (the "Software"), to deal in
-- the Software without restriction, including without limitation the rights to
-- use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
-- the Software, and to permit persons to whom the Software is furnished to do so,
-- subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
-- FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
-- COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
-- IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
-- CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

local setfenv = setfenv or function(f, t)
  local upvalue_index = 1

  -- XXX we may need a utility library if debug isn't available
  while true do
    local name = debug.getupvalue(f, upvalue_index)
    -- some functions don't have an _ENV upvalue, because
    -- they never refer to globals
    if not name then
      return
    end
    if name == '_ENV' then
      debug.setupvalue(f, upvalue_index, t)
      return
    end
    upvalue_index = upvalue_index + 1
  end
end

--- Tests wheter an expression ends in an unfinished string literal.
-- @return First position in the unfinished string literal or `nil`.
local function ends_in_unfinished_string(expr)
  local position = 0
  local quote
  local current_delimiter
  local last_unmatched_start
  while true do
    -- find all quotes:
    position, quote = expr:match('()([\'"])', position+1)
    if not position then break end
    -- if we're currently in a string:
    if current_delimiter then
      -- would end current string?
      if current_delimiter == quote then
        -- not escaped?
        if expr:sub(position-1, position-1) ~= '\\' then
          current_delimiter = nil
          last_unmatched_start = nil
        end
      end
    else
      current_delimiter = quote
      last_unmatched_start = position+1
    end
  end
  return last_unmatched_start
end

return {
  setfenv = setfenv,
  ends_in_unfinished_string = ends_in_unfinished_string
}
