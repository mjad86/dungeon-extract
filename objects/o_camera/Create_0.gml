///@desc Camera setup
global.camMoving = false;								//flag to determine if camera is moving
global.cam = view_camera[0];							//cam ID
follow = o_player;										//Object to follow
previousState = noone;									//camera previous state flag
viewWidth = camera_get_view_width(global.cam);			//640
viewHeight = camera_get_view_height(global.cam);		//360
viewWHalf = camera_get_view_width(global.cam) * 0.5;	//half the cam;s Width
viewHHalf = camera_get_view_height(global.cam) * 0.5;	//half the cam's Height
xTo = xstart;											//Xto position of were to go
yTo = ystart;											//Yto position of were to go
camSpd = 5;												//cam speed of move when transitioning from zone to zone
shakeLength = 0;										//How long screen shake will last
shakeMagnitude = 0;										//How strong the screenshake is
shakeRemain = 0;										//How long of the screenshake remains







