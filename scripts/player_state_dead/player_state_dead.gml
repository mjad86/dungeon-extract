///@desc player_state_dead()
function player_state_dead() {
	
	if(movingHPlatform != noone) {
		//when in moving platform
		hSpd = 0 + movingHPlatform.hSpd;
	}//end if
	else {
		//regular movement
		hSpd = 0;
	}//end else
	
	vSpd = 0;
	game_restart(); //momentary
	
	//MSG("DEAD");	
}//end script