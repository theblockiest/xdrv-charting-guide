-- Mods example file!

-- Before the chart starts, set the UI alpha to 0
xdrv.RunEvent("SetUIAlpha","beat",-12,0)

-- At beat 4, bring the camera up
xdrv.Ease("camera_move_y",0,0.9,"beat",4,"len",0.75,"InOutQuad")

-- At beat 5, bring the camera down
-- Use additional mods to make the camera feel less claustrophobic
xdrv.Ease("camera_move_y",0.9,-0.1,"beat",5,"len",0.75,"InOutQuad")
xdrv.Ease("camera_move_z",0,-0.1,"beat",5,"len",0.75,"InOutQuad")
xdrv.Ease("camera_rotate_x",0,-6,"beat",5,"len",0.75,"InOutQuad")

-- At beat 6, bring the camera back to zero position
xdrv.Ease("camera_move_y",-0.1,0,"beat",6,"len",0.75,"InOutQuad")
xdrv.Ease("camera_move_z",-0.1,0,"beat",6,"len",0.75,"InOutQuad")
xdrv.Ease("camera_rotate_x",-6,0,"beat",6,"len",0.75,"InOutQuad")

-- At beat 7, make the left track bounce out
xdrv.Ease("trackleft_move_x",0,-0.8,"beat",7,"len",0.5,"OutSine")
xdrv.Ease("trackleft_move_x",-0.8,0,"beat",7.5,"len",0.5,"InSine")

-- At beat 8, make the right track bounce out
xdrv.Ease("trackright_move_x",0,0.8,"beat",8,"len",0.5,"OutSine")
xdrv.Ease("trackright_move_x",0.8,0,"beat",8.5,"len",0.5,"InSine")

-- At beat 9, make the left track 360 and bring the camera left
-- Start at 360 to end at "rest" rotation
xdrv.Ease("trackleft_rotate_z",-360,0,"beat",9,"len",1,"OutCubic")
xdrv.Ease("camera_move_x",0,-0.65,"beat",9,"len",0.75,"OutCubic")

-- At beat 10, make the right track 360 and bring the camera right
xdrv.Ease("trackright_rotate_z",360,0,"beat",10,"len",1,"OutCubic")
xdrv.Ease("camera_move_x",-0.65,0.65,"beat",10,"len",0.75,"OutCubic")

-- At beat 11, bring the camera back to the center
-- Also stretch FOV super crazy
xdrv.Ease("camera_move_x",0.65,0,"beat",11,"len",0.75,"OutCubic")
xdrv.Ease("camera_fov",100,130,"beat",11,"len",2,"InQuad")

-- At beat 13, reset the FOV to default
-- For our purposes, this is where the modfile ends :]
xdrv.Set("camera_fov",100,"beat",13)