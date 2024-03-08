///@desc platform_state_decide_movement()
function platform_state_decide_movement() {

	if(startMove == MOVE.UP) {
		//set platform moving up
		image_index = 0;
		image_speed = 1;
		move = -1
		state = platform_state_moving_v;
	}//end if
	
	if(startMove == MOVE.DOWN) {
		//set platform moving down
		image_index = 0;
		image_speed = 1;
		move = 1
		state = platform_state_moving_v;
	}//end if
	
	if(startMove == MOVE.LEFT) {
		//set platform moving left
		move = -1
		state = platform_state_moving_h;
	}//end if
	
	if(startMove == MOVE.RIGHT) {
		//set platform moving right
		move = 1
		state = platform_state_moving_h;
	}//end if
	
}//end script