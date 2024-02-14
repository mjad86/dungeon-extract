///@desc initialize variables
key = generate_unique_key();	//unique key

var _saveData = ds_map_find_value(o_meta.saveData, key);

if(!is_undefined(_saveData) && _saveData == true) {
	//if data exists and its true then door is opened
	image_speed = 0;
	image_index = floor(image_number) - 1;
	mask_index = s_no_mask;
	state = door_state_open;
}//end if
else {
	//the door has not been opened yet
	image_speed = 0;
	image_index = 0;
	mask_index = s_door_vertical;
	state = door_state_closed;
}//end else










