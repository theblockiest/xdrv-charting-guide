--Author: TheBlockiest
--Tags: Data
--[[
MIT License

Copyright (c) 2026 TheBlockiest

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
]]

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