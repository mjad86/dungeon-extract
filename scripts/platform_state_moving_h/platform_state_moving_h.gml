///@desc platform_state_moving()
function platform_state_moving() {

	if(startMove == MOVE.LEFT) {
		if(round(x) == round(xstart-distanceToMove)) {
			hSpd = 0;					//we stop fully
			move = 0;					//we stop movement
			previousState = state;		//we store the previous state
			state = platform_state_idle;//change state here
			with(o_parent_lever) {
				if(slot == other.slot) {
					//reset flag to set lever useable after gates finished opening/closing
					activated = false;
				}//end if
			}//end with
			startMove = MOVE.RIGHT;		//change direction for next use
		}//end if
	}//end if
	
	if(startMove == MOVE.RIGHT) {
		if(round(x) == round(xstart)) {
			hSpd = 0					//stop current spd
			move = 0;					//stop movement
			previousState = state;		//we store the previous state
			state = platform_state_idle;//change state
			with(o_parent_lever) {
				if(slot == other.slot) {
					//reset flag to set lever useable after gates finished opening/closing
					activated = false;
				}//end if
			}//end with
			startMove = MOVE.LEFT;		//change direction for next use
		}//end if
	}//end if

}//end script