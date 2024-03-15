///@desc player_state_land()
function player_state_land() {
	
	//regular movement
	hSpd = 0;
	
	set_animation_sprite(s_figther_landing, 0, 1);
	
	if(animation_end()) {
		state = player_state_standing;
	}//end if
		
	//MSG("LAND");
}//end script