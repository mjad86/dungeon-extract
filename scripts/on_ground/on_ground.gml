///@desc on_ground()
function on_ground() {
	
	var _onGround = false;
	
	if(place_meeting(x, y+1, o_parent_wall)) {
		//verify if player is touching ground
		_onGround = true;		
	}//end if
	
	with(o_oneway_platform) {		
		if(place_meeting(x, y-1, other) && !place_meeting(x, y, other)) {
			_onGround = true;	
		}//end if		
	}//end with
	
	return _onGround;

}//end script