///@desc moving platform behavior
var _col = false;
// Horizontal collition
repeat(abs(hSpd)) {
	if (!place_meeting(x + sign(hSpd), y, o_parent_wall)) {
	    x += sign(hSpd); 
	}//end if
	else {
	    hSpd = 0;
		_col = true;
	    break;
	}//end else
}//end repeat

switch(object_index) {
	case o_h_moving_platform:
		hSpd = approach(hSpd, moveSpdMax*move, accel);  //acceleration adn friction manager
		if(_col) {
			//when collided with a o_parent_wall it changes directions
			move *= -1;
			hSpd = 0;
			if(place_meeting(x, y-1, o_player)) {
				o_player.hSpd = 0;
			}//end if
		}//end if
		with(o_player) {
			if(place_meeting(x, y+1, other) && !place_meeting(x, y, other)) {
				movingPlatform = true;
			}//end if
			else {
				movingPlatform = false;
			}//end else
		}//end with
	break;
	case o_v_moving_platform:
	
	break;
}//end switch

