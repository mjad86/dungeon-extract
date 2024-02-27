//Update Destination
if(instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}//end if

//Update object position
x += (xTo-x)/15;
y += (yTo-y)/15;

//Restrict camera to room bounds
x = clamp(x, viewWHalf, room_width-viewWHalf);
y = clamp(y, viewHHalf, room_height-viewHHalf);

//Apply screen shake if exist's
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain-((1/shakeLength)*shakeMagnitude)); //reduce the remaining of the shake by a fraction of its value until 0

//set camera position
camera_set_view_pos(global.cam, x-viewWHalf, y-viewHHalf);