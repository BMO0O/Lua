s = '1 2 3\n4 5 6\n7 8 9'


local row = {}
local coloumn = {}
for i=1, #s do
  local num = s:sub(i,i)
  table.insert(row, num)
  print(row)
end
