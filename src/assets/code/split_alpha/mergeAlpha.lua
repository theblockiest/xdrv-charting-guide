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