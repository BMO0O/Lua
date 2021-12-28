s = 'dulicates'

function dumpTable(o)
  if type(o) == 'table' then
    local s = '{'
    for k,v in pairs(o) do
      if type(k) ~= 'number' then
        k = '"' .. k .. '"'
      end
      s = s .. '[' .. k .. ']' .. dumpTable(v) .. ','
    end
    return s .. '}'
  else
    return tostring(o)
  end
end

local list = {}

print(dumpTable(list))

for i=1, #s do
  local char = s:sub(i,i):lower()

  if char:find("%l") then
    if list[char] then
      return false
    else
      list[char] = true
    end
  end
  print(dumpTable(list))
end
return true
