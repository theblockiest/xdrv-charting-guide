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

local table = {["X"]=1,["D"]=3,["R"]=4,["V"]=6}
local hasElt = checkTable(3,table)
-- hasElt = true
local hasElt2 = checkTable(5,table)
-- hasElt2 = false