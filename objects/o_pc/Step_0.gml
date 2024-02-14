///@desc switch behaviour

if(place_meeting(x, y , o_player)) {
	with(o_parent_door) {
		if(slot == other.slot) {
			if(state == door_state_closed) { 
				image_speed = 1
				state = door_state_opening;
			}//end if
		}//end if
	}//end with
}//end if








