///@desc player_state_dead_respawn()
function player_state_dead_respawn() {
	
	//regular movement
	hSpd = 0;	
	vSpd = 0;
	
	if(sprite_index != playerDeadBlood) {
		sprite_index = playerDeadBlood;
		image_speed = 0;
		image_index = 0;
	}//end if
	
	if(deadScreen <= 0) {
		image_speed = 1;
	}//end if	
	
	if(animation_end()) {
		state = player_state_respawn;
	}//end if
	
	//MSG("DEAD");	
}//end script