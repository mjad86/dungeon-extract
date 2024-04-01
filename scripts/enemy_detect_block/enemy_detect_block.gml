///@desc enemy_detect_block()
function enemy_detect_block() {
	
	var _block = false;
	var _targetList = ds_list_create();
	var _hit = collision_line_list(x, y-attackRangeY, x+(attackRangeX*sign(image_xscale)), y-attackRangeY, [o_player, o_player_block], false, true, _targetList, true);

	if(_hit > 0) {
		var _closest = _targetList[| 0];
		if(_closest.object_index == o_player_block) {
			//if the object_index is o_parent_block we set it to true
			_block = true;
		}//end if		
	}//end if
	
	ds_list_destroy(_targetList); //we destroy it at the end to avoid leaks
	
	return _block;

}//end script