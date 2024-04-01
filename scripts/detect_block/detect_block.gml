///@desc detect_block()
function detect_block() {
	
	var _block = false;
	var _targetList = ds_list_create();
	var _hit = collision_line_list(x, y-attackRangeY, x+(attackRangeX*sign(image_xscale)), y-attackRangeY, [o_parent_block, o_parent_enemy], false, true, _targetList, true);

	if(_hit > 0) {
		var _closest = _targetList[| 0];
		if(object_is_ancestor(_closest.object_index, o_parent_block) == true) {
			//if the object_index is o_parent_block we set it to true
			_block = true;
		}//end if		
	}//end if
	
	ds_list_destroy(_targetList); //we destroy it at the end to avoid leaks
	
	return _block;

}//end script