///@desc platform_state_moving_v()
function platform_state_moving_v() {

	if(startMove == MOVE.UP) {
		if(round(y) == round(ystart-distanceToMove)) {
			vSpd = 0;					//we stop fully
			move = 0;					//we stop movement
			previousState = state;		//we store the previous state
			state = platform_state_idle;//change state here
			with(o_parent_lever) {
				if(slot == other.slot) {
					//reset flag to set lever useable after gates finished opening/closing
					activated = false;
				}//end if
			}//end with
			startMove = MOVE.DOWN;		//change direction for next use
			image_speed = 0;
			image_index = 0;
		}//end if
	}//end if
	
	if(startMove == MOVE.DOWN) {
		if(round(y) == round(ystart)) {
			vSpd = 0					//stop current spd
			move = 0;					//stop movement
			previousState = state;		//we store the previous state
			state = platform_state_idle;//change state
			with(o_parent_lever) {
				if(slot == other.slot) {
					//reset flag to set lever useable after gates finished opening/closing
					activated = false;
				}//end if
			}//end with
			startMove = MOVE.UP;		//change direction for next use
			image_speed = 0;
			image_index = 0;
		}//end if
	}//end if

}//end script