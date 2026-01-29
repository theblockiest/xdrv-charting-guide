--Author: TheBlockiest
--Tags: Events, Alpha
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
splitAlpha(beat, alpha)
Sets PathAlpha to 1
Also sets the alpha of the left and right sides to a given value
Ensures that LeftPathAlpha and RightPathAlpha are not blended with PathAlpha

Parameters:
- beat: The beat to split the background alphas at
- alpha: The alpha to set the left and right sides of the background to
]]
local function splitAlpha(beat, alpha)
	xdrv.RunEvent("SetPathAlpha","beat",beat,1)

	xdrv.RunEvent("SetLeftPathAlpha","beat",beat,alpha)
	xdrv.RunEvent("SetRightPathAlpha","beat",beat,alpha)
end

--[[
mergeAlpha(beat, alpha)
Sets LeftPathAlpha and RightPathAlpha to 1
Also sets the alpha of background to a given values
Ensures that PathAlpha is not blended with LeftPathAlpha and RightPathAlpha

Parameters:
- beat: The beat to split the background alphas at
- alpha: The alpha to set the left and right sides of the background to
]]
local function mergeAlpha(beat, alpha)
	xdrv.RunEvent("SetPathAlpha","beat",beat,alpha)

	xdrv.RunEvent("SetLeftPathAlpha","beat",beat,1)
	xdrv.RunEvent("SetRightPathAlpha","beat",beat,1)
end