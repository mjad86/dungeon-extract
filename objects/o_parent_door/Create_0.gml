///@desc initialize variables
key = generate_unique_key();	//unique key

var _saveData = ds_map_find_value(o_meta.saveData, key);

if(!is_undefined(_saveData) && _saveData == true) {
	//if data exists and its true then door is opened
	y = ystart - sprite_get_height(sprite_index);
	state = door_state_open;
}//end if
else {
	//the door has not been opened yet
	mask_index = s_gate_vertical;
	state = door_state_closed;
}//end else










