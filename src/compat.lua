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

local new = ffi.new

-- Allow rl modification
local old_newindex = rl.__newindex
rl.__newindex = nil

-- Load*() wrappers.
if raylua.loadfile then
  local LoadMusicStream = rl.LoadMusicStream
  function rl.LoadMusicStream(path)
    local f, err = raylua.loadfile(path)

    if f then
      local ext = "." .. path:gsub(".+%.", "")

      return rl.LoadMusicStreamFromMemory(ext, ffi.cast("void *", f), #f)
    else
      print(("RAYLUA: %s"):format(err))
      return LoadMusicStream(path)
    end
  end
end

-- math metamethods
ffi.metatype("Vector2", {
  __add = function (a, b)
    if ffi.istype("Vector2", b) then
      return new("Vector2", a.x + b.x, a.y + b.y)
    else
      error "Invalid operation."
    end
  end,
  __sub = function (a, b)
    if ffi.istype("Vector2", b) then
      return new("Vector2", a.x - b.x, a.y - b.y)
    else
      error "Invalid operation."
    end
  end,
  __unm = function (a)
    return new("Vector2", -a.x, -a.y)
  end,
  __len = function (a)
    return math.sqrt(a.x * a.x + a.y * a.y)
  end,
  __mul = function (a, b)
    if type(a) == "number" then
      -- swap if a is a number (a * vector)
      a, b = b, a
    end

    if ffi.istype("Vector2", b) then -- dot product
      return a.x * b.x + a.y * b.y
    elseif type(b) == "number" then
      return new("Vector2", a.x * b, a.y * b)
    else
      error "Invalid operation."
    end
  end,
  __div = function (a, b)
    if type(b) == "number" then
      return new("Vector2", a.x / b, a.y / b)
    else
      error "Invalid operation"
    end
  end,
  __tostring = function (a)
    return string.format("Vector2: (%g %g)", a.x, a.y)
  end
})

ffi.metatype("Vector3", {
  __add = function (a, b)
    if ffi.istype("Vector3", b) then
      return new("Vector3", a.x + b.x, a.y + b.y, a.z + b.z)
    else
      error "Invalid operation."
    end
  end,
  __sub = function (a, b)
    if ffi.istype("Vector3", b) then
      return new("Vector3", a.x - b.x, a.y - b.y, a.z - b.z)
    else
      error "Invalid operation."
    end
  end,
  __unm = function (a)
    return new("Vector3", -a.x, -a.y, -a.z)
  end,
  __len = function (a)
    return math.sqrt(a.x * a.x + a.y * a.y + a.z * a.z)
  end,
  __mul = function (a, b)
    if type(a) == "number" then
      -- swap if a is a number (a * vector)
      a, b = b, a
    end

    if ffi.istype("Vector3", b) then -- dot product
      return a.x * b.x + a.y * b.y + a.z * b.z
    elseif type(b) == "number" then
      return new("Vector3", a.x * b, a.y * b, a.z * b)
    else
      error "Invalid operation."
    end
  end,
  __div = function (a, b)
    if type(b) == "number" then
      return new("Vector3", a.x / b, a.y / b, a.z / b)
    else
      error "Invalid operation"
    end
  end,
  __tostring = function (a)
    return string.format("Vector3: (%g %g %g)", a.x, a.y, a.z)
  end
})

-- TODO: Matrix and Quaternion

-- Easing functions
function rl.EaseLinearNone(t, b, c, d)
  return c * t / d + b
end

rl.EaseLinearIn = rl.EaseLinearNone
rl.EaseLinearOut = rl.EaseLinearNone
rl.EaseLinearInOut = rl.EaseLinearNone

function rl.EaseSineIn(t, b, c, d)
  return -c * math.cos(t / d * (math.pi / 2.0)) + c + b
end

function rl.EaseSineOut(t, b, c, d)
  return c * math.sin(t / d * (math.pi / 2.0)) + b
end

function rl.EaseSineInOut(t, b, c, d)
  return -c / 2.0 * (math.cos(math.pi * t / d) - 1.0) + b
end

function rl.EaseCircIn(t, b, c, d)
  t = t / d
  return -c * (math.sqrt(1.0 - t * t) - 1.0) + b
end

function rl.EaseCircOut(t, b, c, d)
  t = t / d - 1.0
  return c * math.sqrt(1.0 - t * t) + b
end

function rl.EaseCircInOut(t, b, c, d)
  t = t / (d / 2.0)

  if t < 1.0 then
    return -c / 2.0 * (math.sqrt(1.0 - t * t) - 1.0) + b
  else
    t = t - 2.0
    return c / 2.0 * (math.sqrt(1.0 - t * t) + 1.0) + b
  end
end

function rl.EaseCubicIn(t, b, c, d)
  t = t / d
  return c * t * t * t + b
end

function rl.EaseCubicOut(t, b, c, d) 
  t = t / d - 1.0
  return c * (t * t * t + 1.0) + b
end

function rl.EaseCubicInOut(t, b, c, d)
  t = t / (d / 2.0)

  if t < 1.0 then
    return c / 2.0 * t * t * t + b
  else
    t = t - 2.0
    return c / 2.0 * (t * t * t + 2.0) + b
  end
end

function rl.EaseQuadIn(t, b, c, d)
  t = t / d
  return c * t * t + b
end

function rl.EaseQuadOut(t, b, c, d)
  t = t / d
  return -c * t * (t - 2.0) + b
end

function rl.EaseQuadInOut(t, b, c, d)
  t = t / (d / 2.0)

  if t < 1.0 then
    return ((c / 2) * (t * t)) + b
  else
    return -c / 2.0 * (((t - 1.0) * (t - 3.0)) - 1.0) + b
  end
end

function rl.EaseExpoIn(t, b, c, d)
  if t == 0.0 then
    return b
  else
    return (c * math.pow(2.0, 10.0 * (t/d - 1.0)) + b)
  end
end

function rl.EaseExpoOut(t, b, c, d)
  if t == d then
    return b + c
  else
    return c * (math.pow(2.0, -10.0 * t / d) + 1.0) + b
  end
end

function rl.EaseExpoInOut(t, b, c, d)
  if t == 0.0 then
    return b
  elseif t == d then
    return b + c
  end

  t = t / (d / 2.0)
  if t < 1.0 then
    return c / 2.0 * math.pow(2.0, 10.0 * (t - 1.0)) + b
  else
    return c / 2.0 * (-math.pow(2.0, -10.0 * (t - 1.0)) + 2.0) + b
  end
end

function rl.EaseBackIn(t, b, c, d)
  local s = 1.70158
  t = t / d
  return c * t * t * ((s + 1.0) * t - s) + b
end

function rl.EaseBackOut(t, b, c, d)
  local s = 1.70158
  t = t / d - 1.0
  return c * (t * t * ((s + 1.0) * t + s) + 1.0) + b
end

function rl.EaseBackInOut(t, b, c, d)
  local s = 1.70158 * 1.525;
  t = t / (d / 2.0)

  if t < 1.0 then
    return c / 2.0 * (t * t * ((s + 1.0) * t - s)) + b
  else
    t = t - 2.0
    return c / 2.0 * (t * t * ((s + 1.0) * t + s) + 2.0) + b
  end
end

function rl.EaseBounceOut(t, b, c, d)
  t = t / d

  if t < 1.0 / 2.75 then
    return c * (7.5625 * t * t) + b
  elseif t < 2.0 / 2.75 then
    t = t - 1.5 / 2.75
    return c * (7.5625 * t * t + 0.75) + b
  elseif t < 2.5 / 2.75 then
    t = t - 2.25 / 2.75
    return c * (7.5625 * t * t + 0.9375) + b
  else
    t = t - 2.625 / 2.75
    return c * (7.5625 * t * t + 0.984375) + b
  end
end

function rl.EaseBounceIn(t, b, c, d)
  return (c - rl.EaseBounceOut(d - t, 0.0, c, d) + b)
end

function rl.EaseBounceInOut(t, b, c, d)
  if t < d / 2.0 then
    return rl.EaseBounceIn(t * 2.0, 0.0, c, d) * 0.5 + b
  else
    return rl.EaseBounceOut(t * 2.0 - d, 0.0, c, d) * 0.5 + c * 0.5 + b
  end
end

function rl.EaseElasticIn(t, b, c, d)
  if t == 0.0 then
    return b
  end

  t = t / d
  if t == 1.0 then
    return b + c
  end

  t = t - 1.0

  local p = d * 0.3
  local a = c
  local s = p / 4.0
  local postFix = a * math.pow(2.0, 10.0 * t)

  return -(postFix * math.sin((t * d - s) * (2.0 * math.pi) / p)) + b
end

function rl.EaseElasticOut(t, b, c, d)
  if t == 0.0 then
    return b
  end

  t = t / d
  if t == 1.0 then
    return b + c
  end

  local p = d * 0.3
  local a = c
  local s = p / 4.0

  return a * math.pow(2.0,-10.0 * t) * math.sin((t * d - s) * (2.0 * math.pi) / p) + c + b
end

function rl.EaseElasticInOut(t, b, c, d)
  if t == 0.0 then
    return b
  end

  t = t / (d / 2.0)
  if t == 2.0 then
    return b + c
  end

  local p = d * 0.3 * 1.5
  local a = c
  local s = p / 4.0

  if t < 1.0 then
    t = t - 1
    local postFix = a * math.pow(2.0, 10.0 * t)
    return -0.5 * (postFix * math.sin((t * d - s)*(2.0 * math.pi) / p)) + b
  end

  t = t - 1.0
  local postFix = a * math.pow(2.0, -10.0 * t)
  return postFix * math.sin((t * d - s) * (2.0 * math.pi) / p) * 0.5 + c + b
end

-- Revert __newindex
rl.__newindex = old_newindex