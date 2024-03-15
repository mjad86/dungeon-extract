///@desc set_on_ground(_val = true)
function set_on_ground(_val = true){
	if(_val == true) {
		onGround = true;
		coyoteHangTimer = coyoteHangFrames;
	}//end if
	else {
		onGround = false;
		coyoteHangTimer = 0;
		myMovingPlat = noone;
	}//end else
}//end script