//Update Destination
if(instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}//end if

global.camMoving = global.camLeft || global.camRight || global.camUp || global.camDown; //returns 1 or 0
var _freeCamSpd = 4;
var _moveX = global.camRight - global.camLeft;
var _moveY = global.camDown - global.camUp;
//Update object position
if(global.camMoving) {
	//free camera movement
	x += _moveX * _freeCamSpd;
	y += _moveY * _freeCamSpd;
	
	//Restrict camera to room bounds and players x and y position
	x = clamp(x, max(viewWHalf, xTo - (viewWHalf)), min(room_width - viewWHalf, xTo + viewWHalf));
    y = clamp(y, max(viewHHalf, yTo - (viewHHalf)), min(room_height - viewHHalf, yTo + viewHHalf));
}//end if
else {
	//camera sets its position to the object is folowwing
	x += (xTo-x)/15;
	y += (yTo-y)/15;
	
	//Restrict camera to room bounds
	x = clamp(x, viewWHalf, room_width-viewWHalf);
	y = clamp(y, viewHHalf, room_height-viewHHalf);
}//end else

//Apply screen shake if exist's
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain-((1/shakeLength)*shakeMagnitude)); //reduce the remaining of the shake by a fraction of its value until 0

with(o_setup) {
	//we set this here in order to have same time shadow movement with camera and avoid delay movement bug
	vx = other.x-other.viewWHalf;
	vy = other.y-other.viewHHalf;
}//end with

//set camera position
camera_set_view_pos(global.cam, x-viewWHalf, y-viewHHalf);