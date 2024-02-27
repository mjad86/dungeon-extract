///@desc player_state_activate()
function player_state_activate() {
	hSpd = 0;	//avoid player horizontal movement
	vSpd = 0;	//avoid player horizontal movement
	
	if(!global.activate) {
		state = player_state_idle;
	}//end if
}//end script