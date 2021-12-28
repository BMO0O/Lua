
--[[for key, value in pairs({table.unpack(a, #a/2+1, #a)}) do
    print(key, value)
end

function table.slice(tbl, first, last, step)
    local sliced = {}

    for i = first or 1, last or #tbl, step or 1 do
        sliced[#sliced+1] = tbl[i]
    end

    return sliced
end
--]]

local a = {10,22,35,44,58,600}

function binarySearch(array, target)

    if #array==nil then
        return -1
    end

    local low = 1
    local high = #array

    while low <= high do
        local mid = ( low + high ) // 2
        if target == array[mid] then
            return target
        elseif array[mid] > target then
            high = mid - 1
        elseif array[mid] < target then
            low = mid + 1
        end
    end

    return -1
end

print(binarySearch(a, 600))
