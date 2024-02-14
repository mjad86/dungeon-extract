///@desc door_state_opening()
function door_state_opening() {
	
	if(animation_end()) {
		image_speed = 0;
		mask_index = s_no_mask;
		ds_map_replace(o_meta.saveData, key, true);
		state = door_state_open;
	}//end if

}//end scrip