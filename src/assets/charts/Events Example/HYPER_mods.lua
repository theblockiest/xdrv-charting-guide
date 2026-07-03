-- Events example file!

-- Before the chart starts, set the UI alpha to 0
xdrv.RunEvent("SetUIAlpha","beat",-12,0)

-- At beat zero, ease the left and right path alpha to 0
xdrv.RunEvent("EaseLeftPathAlpha","beat",0,0,2)
xdrv.RunEvent("EaseRightPathAlpha","beat",0,0,2)

-- At beat 4, turn on left alpha
xdrv.RunEvent("EaseLeftPathAlpha","beat",4,1,0.125)

-- At beat 5, turn on left alpha and off right alpha
xdrv.RunEvent("EaseLeftPathAlpha","beat",5,0,0.125)
xdrv.RunEvent("EaseRightPathAlpha","beat",5,1,0.125)

-- At beat 6, set left and right alpha to same value
xdrv.RunEvent("EaseLeftPathAlpha","beat",6,0.75,0.125)
xdrv.RunEvent("EaseRightPathAlpha","beat",6,0.75,0.125)

-- At beat 7, enable bloom beat and recording overlay
xdrv.RunEvent("SetRecordingOverlayState","beat",7,true,1)
xdrv.RunEvent("EnableBloomBeat","beat",7)

-- At beat 10, disable recording overlay
-- Also fade static overlay in, disable bloom beat, and lower background and building brightness
xdrv.RunEvent("SetRecordingOverlayAlpha","beat",10,0,3)
xdrv.RunEvent("SetStaticOverlayAlpha","beat",10,0.5,3)
xdrv.RunEvent("DisableBloomBeat","beat",10)
xdrv.RunEvent("EaseLightBrightness","beat",10,0,0.25)
xdrv.RunEvent("EaseLeftPathAlpha","beat",10,0.25,0.25)
xdrv.RunEvent("EaseRightPathAlpha","beat",10,0.25,0.25)

-- At beat 13, set the static overlay to invisible
-- For our purposes, this is where the modfile ends :]
xdrv.RunEvent("SetStaticOverlayAlpha","beat",13,0)