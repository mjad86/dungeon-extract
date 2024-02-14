///@desc Camera setup

global.cam = view_camera[0];							//cam ID
follow = o_player;										//Object to follow
viewWHalf = camera_get_view_width(global.cam) * 0.5;	//half the cam;s Width
viewHHalf = camera_get_view_height(global.cam) * 0.5;	//half the cam's Height
xTo = xstart;											//Xto position of were to go
yTo = ystart;											//Yto position of were to go
shakeLength = 0;										//How long screen shake will last
shakeMagnitude = 0;										//How strong the screenshake is
shakeRemain = 0;										//How long of the screenshake remains









