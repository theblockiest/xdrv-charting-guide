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

splitAlpha(8,0.5)