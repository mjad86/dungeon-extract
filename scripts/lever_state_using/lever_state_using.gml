///@desc lever_state_using()
function lever_state_using() {
	
	if(image_speed != 1) {
		//add SFX here
		image_speed = 1;
	}//end if
	
	if(animation_end()) {
		with(o_parent_door) {
			if(slot == other.slot) {
				if(state == door_state_closed) { 
					state = door_state_opening;
				}//end if
			}//end if
		}//end with	
		ds_map_replace(o_meta.saveData, key, true);
		state = lever_state_used;
	}//end if
}//end script