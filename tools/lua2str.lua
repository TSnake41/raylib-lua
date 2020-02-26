local output = io.open(arg[1], "w")
output:write("const char *" .. arg[2] .. " = ")

for i=3,#arg do
  for line in io.lines(arg[i]) do
    output:write(string.format('%q "\\n"', line) .. '\n')
  end
end

output:write ";"
output:close()
