--[[
pulseBoth(pulseAlpha, endAlpha, startBeat, beatDurations)
Pulses the lighting of the background by increasing and decreasing PathAlpha
Eases the left side and right side's alpha separately

Implementation:
Requires pulseLeft and pulseRight to function

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
local function pulseBoth(pulseAlpha, endAlpha, startBeat, beatDurations)
	PulseLeft(pulseAlpha, endAlpha, startBeat, beatDurations)
	PulseRight(pulseAlpha, endAlpha, startBeat, beatDurations)
end

pulseBoth(0.9,0.3,12,{0.25,0,0.75})