///@desc line_of_sight()
function line_of_sight() {

	var _los = false;
	var _hit = collision_line_list(x, y-sightRangeY, x+(sightRangeX*sign(image_xscale)), y-sightRangeY, [o_player, o_wall, o_oneway_platform], false, true, targetList, true);
	
	if(_hit > 0) {
		var _closest = targetList[| 0];
		if(_closest.id != id) {
			pointX = _closest.x - x;
			if((_closest.id == o_player.id)) {
				//if the id belongs to the player we set it to true
				_los = true;
			}//end if
			ds_list_clear(targetList);
		}//end if
	}//end if
	
	return _los;

}//end script