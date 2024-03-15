///@desc player_state_dead()
function player_state_dead() {
	
	//regular movement
	hSpd = 0;	
	vSpd = 0;
	game_restart(); //momentary
	
	//MSG("DEAD");	
}//end script