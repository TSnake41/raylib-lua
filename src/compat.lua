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

-- math metamethods
local new = ffi.new

ffi.metatype("rf_vec2", {
  __add = function (a, b)
    if ffi.istype("rf_vec2", b) then
      return new("rf_vec2", a.x + b.x, a.y + b.y)
    else
      error "Invalid operation."
    end
  end,
  __sub = function (a, b)
    if ffi.istype("rf_vec2", b) then
      return new("rf_vec2", a.x - b.x, a.y - b.y)
    else
      error "Invalid operation."
    end
  end,
  __unm = function (a)
    return new("rf_vec2", -a.x, -a.y)
  end,
  __len = function (a)
    return math.sqrt(a.x * a.x + a.y * a.y)
  end,
  __mul = function (a, b)
    if type(a) == "number" then
      -- swap if a is a number (a * vector)
      a, b = b, a
    end

    if ffi.istype("rf_vec2", b) then -- dot product
      return a.x * b.x + a.y * b.y
    elseif type(b) == "number" then
      return new("rf_vec2", a.x * b, a.y * b)
    else
      error "Invalid operation."
    end
  end,
  __div = function (a, b)
    if type(b) == "number" then
      return new("rf_vec2", a.x / b, a.y / b)
    else
      error "Invalid operation"
    end
  end,
  __tostring = function (a)
    return string.format("rf_vec2: (%g %g)", a.x, a.y)
  end
})

ffi.metatype("rf_vec3", {
  __add = function (a, b)
    if ffi.istype("rf_vec3", b) then
      return new("rf_vec3", a.x + b.x, a.y + b.y, a.z + b.z)
    else
      error "Invalid operation."
    end
  end,
  __sub = function (a, b)
    if ffi.istype("rf_vec3", b) then
      return new("rf_vec3", a.x - b.x, a.y - b.y, a.z - b.z)
    else
      error "Invalid operation."
    end
  end,
  __unm = function (a)
    return new("rf_vec3", -a.x, -a.y, -a.z)
  end,
  __len = function (a)
    return math.sqrt(a.x * a.x + a.y * a.y + a.z * a.z)
  end,
  __mul = function (a, b)
    if type(a) == "number" then
      -- swap if a is a number (a * vector)
      a, b = b, a
    end

    if ffi.istype("rf_vec3", b) then -- dot product
      return a.x * b.x + a.y * b.y + a.z * b.z
    elseif type(b) == "number" then
      return new("rf_vec3", a.x * b, a.y * b, a.z * b)
    else
      error "Invalid operation."
    end
  end,
  __div = function (a, b)
    if type(b) == "number" then
      return new("rf_vec3", a.x / b, a.y / b, a.z / b)
    else
      error "Invalid operation"
    end
  end,
  __tostring = function (a)
    return string.format("rf_vec3: (%g %g %g)", a.x, a.y, a.z)
  end
})

-- TODO: Matrix and Quaternion
