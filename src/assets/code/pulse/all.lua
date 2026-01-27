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

--[[
pulseLeft(pulseAlpha, endAlpha, startBeat, beatDurations)
Pulses the lighting of the left side of the background by increasing and decreasing PathAlpha

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
local function pulseLeft(pulseAlpha, endAlpha, startBeat, beatDurations)
	local inDuration = beatDurations[1]
	local holdDuration = beatDurations[2]
	local outDuration = beatDurations[3]

	if inDuration == 0 then
		xdrv.RunEvent("SetLeftPathAlpha","beat",startBeat,pulseAlpha)
	else
		xdrv.RunEvent("EaseLeftPathAlpha","beat",startBeat,pulseAlpha,inDuration)
	end

	local outStartBeat = startBeat + inDuration + holdDuration

	xdrv.RunEvent("EaseLeftPathAlpha","beat",outStartBeat,endAlpha, outDuration)
end

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
local function PulseBoth(pulseAlpha, endAlpha, startBeat, beatDurations)
	PulseLeft(pulseAlpha, endAlpha, startBeat, beatDurations)
	PulseRight(pulseAlpha, endAlpha, startBeat, beatDurations)
end