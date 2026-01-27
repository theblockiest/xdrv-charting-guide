--[[
checkTable(elt, t)
Checks if an element is within a table
Also works for lists, but is less optimal

Parameters:
- elt: The element to check the table for
- t: Any table

Returns:
- true if the element is found in the table
- false otherwise
]]
local function checkTable(elt, t)
    for _, v in pairs(t) do
        if v == elt then
            return true
        end
    end
    return false
end