///@desc door_state_opening()
function door_state_opening() {
	
	var _openDis = sprite_get_height(sprite_index);
	//MSG(_openDis);
	if(y > ystart - _openDis) {
		//move to open upstairs
		y--;
	}//end if
	else {
		ds_map_replace(o_meta.saveData, key, true);
		state = door_state_open;
	}//end else

}//end scrip