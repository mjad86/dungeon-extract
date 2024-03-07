///@desc moving platform behavior
var _col = false;
// Vertical collition
repeat(abs(vSpd)) {
	if (!place_meeting(x, y + sign(vSpd), o_parent_wall)) {
	    y += sign(vSpd); 
	}//end if
	else {
	    vSpd = 0;
		_col = true;
	    break;
	}//end else
}//end repeat

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
	#region//horizontal platform
	case o_h_oneway_moving_platform:	
		hSpd = approach(hSpd, moveSpdMax*move, accel);  //acceleration
		if(_col) {
			//when collided with a o_parent_wall it changes directions
			move *= -1;
			if(place_meeting(x, y-1, o_player)) {
				//avoid player sliding on platform when colliding with wall
				o_player.hSpd = 0;
			}//end if
		}//end if
		with(o_player) {
			if(place_meeting(x, y+1, other) && !place_meeting(x, y, other)) {
				movingHPlatform = other.id;
			}//end if
			else {
				movingHPlatform = noone;
			}//end else
		}//end with
	break;
	#endregion
	#region//vertical platform
	case o_v_oneway_moving_platform:
		vSpd = approach(vSpd, moveSpdMax*move, accel);  //acceleration adn friction manager
		if(_col) {
			//when collided with a o_parent_wall it changes directions
			move *= -1;
		}//end if
		with(o_player) {
			if(place_meeting(x, y+5, other) && !place_meeting(x, y, other)) {
				//we give the player room to detect if touching the platform to avoid the downward bug
				movingVPlatform = other.id;
			}//end if
			else {
				movingVPlatform = noone;
			}//end else
		}//end with
	break;
	#endregion
}//end switch

