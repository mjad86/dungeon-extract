///@desc unstuck_player()
function unstuck_player() {
	if(place_meeting(x, y, o_parent_wall)) {	
		for(var _i = 0; _i < 1000; _i++) {
			//right
			if(!place_meeting(x + _i, y, o_parent_wall)) {
				x += _i;
				break;
			}//end if
			//left
			if(!place_meeting(x - _i, y, o_parent_wall)) {
				x -= _i;
				break;
			}//end if
			//up
			if(!place_meeting(x, y - _i, o_parent_wall)) {
				y -= _i;
				break;
			}//end if
			//down
			if(!place_meeting(x, y + _i, o_parent_wall)) {
				y += _i;
				break;
			}//end if
			//top right
			if(!place_meeting(x + _i, y - _i, o_parent_wall)) {
				x += _i;
				y -= _i;
				break;
			}//end if
			//top left
			if(!place_meeting(x - _i, y - _i, o_parent_wall)) {
				x -= _i;
				y -= _i;
				break;
			}//end if
			//bottom right
			if(!place_meeting(x + _i, y + _i, o_parent_wall)) {
				x += _i;
				y += _i;
				break;
			}//end if
			//bottom left
			if(!place_meeting(x - _i, y + _i, o_parent_wall)) {
				x -= _i;
				y += _i;
				break;
			}//end if
		}//end for
	}//end if
}//end script