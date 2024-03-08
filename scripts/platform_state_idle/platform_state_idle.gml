///@desc platform_state_idle()
function platform_state_idle() {
	
	if(move != 0) {
		move = 0;
		hSpd = 0;
		vSpd = 0;
		image_speed = 0;
		image_index = 0;
	}//end if
	
}//end script