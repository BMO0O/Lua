local a = {1,2,3,4}
for key, value in pairs({table.unpack(a, #a/2+1, #a)}) do
    print(key, value)
end

function table.slice(tbl, first, last, step)
    local sliced = {}

    for i = first or 1, last or #tbl, step or 1 do
        sliced[#sliced+1] = tbl[i]
    end

    return sliced
end

local
