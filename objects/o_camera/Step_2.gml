///@desc Update Camera

if(global.camMoving) {
	exit;
}//end if

if(instance_exists(follow)) {
	//update destination
	xTo = follow.x;
	yTo = follow.y;
}//end if

x = xTo - viewWHalf;
y = yTo - viewHHalf;

if(global.activeRoom != -1) && (instance_exists(o_player)){
	//handles cameras position
	if(x < global.activeRoom.x) {
		//if cams x position is less than our room we snap to the rooms x position
		x = global.activeRoom.x
	}//end if
	if(y < global.activeRoom.y) {
		//if cams y position is less than our room we snap to the rooms y position
		y = global.activeRoom.y
	}//end if
	if(x + viewWidth > global.activeRoom.x+global.activeRoom.sprite_width) {
		//if cams x position is greater than our room we snap to the rooms x position + our activeRooms width
		x = (global.activeRoom.x + global.activeRoom.sprite_width) - viewWidth;
	}//end if
	if(y + viewHeight > global.activeRoom.y+global.activeRoom.sprite_height) {
		//if cams y position is greater than our room we snap to the rooms y position + our activeRooms height
		y = (global.activeRoom.y + global.activeRoom.sprite_height) - viewHeight;
	}//end if
}//end if
else {
	//we set x and y to 0 since we are entering a room thats same size as view or a meta room
	x = 0;
	y = 0;
}//end else

//screen shake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);
//decrease screen shake
shakeRemain = max(0, shakeRemain - ((1/shakeLenght) * shakeMagnitude));

//set camera position
camera_set_view_pos(global.cam, x, y);