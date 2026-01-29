--[[
pulse(pulseAlpha, endAlpha, startBeat, beatDurations)
Pulses the lighting of the background by increasing and decreasing PathAlpha

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
local function pulse(pulseAlpha, endAlpha, startBeat, beatDurations)
	local inDuration = beatDurations[1]
	local holdDuration = beatDurations[2]
	local outDuration = beatDurations[3]

	if inDuration == 0 then
		xdrv.RunEvent("SetPathAlpha","beat",startBeat,pulseAlpha)
	else
		xdrv.RunEvent("EasePathAlpha","beat",startBeat,pulseAlpha,inDuration)
	end

	local outStartBeat = startBeat + inDuration + holdDuration

	xdrv.RunEvent("EasePathAlpha","beat",outStartBeat,endAlpha, outDuration)
end

pulse(0.9,0.3,12,{0.25,0,0.75})