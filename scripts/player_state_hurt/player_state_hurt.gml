///@desc player_state_hurt()
function player_state_hurt(){
	hSpd = 0;	//stop player from moving
	staggerEnemy = false;
	set_animation_sprite(playerHurt, 0, 1);	//set sprite
	
	if(animation_end()) {
		//return to state
		state = player_state_idle;
	}//end if 
}//script