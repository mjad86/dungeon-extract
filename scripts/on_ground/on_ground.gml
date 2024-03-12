///@desc on_ground()
function on_ground() {
	
	var _onGround = false;
	
	if(place_meeting(x, y+1, o_parent_wall)) {
		//verify if player is touching ground
		_onGround = true;		
	}//end if
	
	if(movingVPlatform != noone) {
		with(o_oneway_platform) {	
			//if the player is on top we give it a lot of pixel room to avoid the going down bug
			if(place_meeting(x, y-10, other) && !place_meeting(x, y, other)) {
				_onGround = true;	
			}//end if		
		}//end with
	}//end if
	else {
		with(o_oneway_platform) {		
				//regular behaviour
			if(place_meeting(x, y-1, other) && !place_meeting(x, y, other)) {
				_onGround = true;	
			}//end if		
		}//end with
	}//end else

	return _onGround;
	
}//end script