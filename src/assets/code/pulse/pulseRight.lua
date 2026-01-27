--[[
pulseRight(pulseAlpha, endAlpha, startBeat, beatDurations)
Pulses the lighting of the right side of the background by increasing and decreasing PathAlpha

Parameters:
- pulseAlpha: The alpha value of the peak of the pulse
- endAlpha: The alpha value of the end of the pulse
- startBeat: The beat to start the pulse on
- beatDurations: A table of three duration values: {inDuration, holdDuration, outDuration}
	- Over inDuration, the alpha eases from its last set value to pulseAlpha
	- Over holdDuration, the alpha stays at pulseAlpha
	- Over outDuration, the alpha eases from pulseAlpha to endAlpha
	- All duration values are stored in beats
]]
local function pulseRight(pulseAlpha, endAlpha, startBeat, beatDurations)
	local inDuration = beatDurations[1]
	local holdDuration = beatDurations[2]
	local outDuration = beatDurations[3]

	if inDuration == 0 then
		xdrv.RunEvent("SetRightPathAlpha","beat",startBeat,pulseAlpha)
	else
		xdrv.RunEvent("EaseRightPathAlpha","beat",startBeat,pulseAlpha,inDuration)
	end

	local outStartBeat = startBeat + inDuration + holdDuration

	xdrv.RunEvent("EaseRightPathAlpha","beat",outStartBeat,endAlpha, outDuration)
end

local function PulseBoth(pulseAlpha, endAlpha, startBeat, beatDurations)
	PulseLeft(pulseAlpha, endAlpha, startBeat, beatDurations)
	PulseRight(pulseAlpha, endAlpha, startBeat, beatDurations)
end