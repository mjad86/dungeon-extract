///@desc line_of_sight()
function line_of_sight() {

	var _los = false;
	var _losList = ds_list_create();
	var _hit = collision_line_list(x, y-sightRangeY, x+(sightRangeX*sign(image_xscale)), y-sightRangeY, [o_player, o_wall, o_oneway_platform], false, true, _losList, true);
	
	if(_hit > 0) {
		var _closest = _losList[| 0];
		if(_closest.id != id) {
			pointX = _closest.x - x;
			if((_closest.id == o_player.id)) {
				//if the id belongs to the player we set it to true
				_los = true;
			}//end if
			ds_list_clear(_losList);
		}//end if
	}//end if
	
	ds_list_destroy(_losList);
	
	return _los;

}//end script