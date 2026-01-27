--[[
checkList(elt, list)
Checks if an element is within a list
Not guaranteed to work with non-list tables

Parameters:
- elt: The element to check the list for
- list: A numerically and sequentially indexed table
    - Ex. {4,11,2,0.5}

Returns:
- true if the element is found in the list
- false otherwise
]]
local function checkList(elt, list)
    for _, v in ipairs(list) do
        if v == elt then
            return true
        end
    end
    return false
end