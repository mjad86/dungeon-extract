///@desc player_state_crouch()
function player_state_crouch() {
	
	hSpd = 0;
	
	//sprite animation
	set_animation_sprite(playerCrouch, 0, 0);
	
	//change state to idle
	if(!global.down) {
		state = player_state_idle;
		mask_index = playerMask;
	}//end if
	
	//if not touchin ground then change state to fall
	if(!onGround) {
		state = player_state_fall;
		mask_index = playerMask;
	}//end if

	//MSG("CROUCH");
}//end script