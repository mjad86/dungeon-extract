///@desc player_state_jump()
function player_state_jump() {
	
	//set sprite	
	if(!animation_end()) {
		set_animation_sprite(playerJump, 0, 1);
	}//end if
	else {
		set_animation_sprite(playerJump, floor(sprite_get_number(sprite_index))-1, 0);
	}//end else
	
	if(vSpd < 0 && !global.jumpHold) {
		//controls jump height if jump button not held
		//vSpd = max(vSpd, 0);
		vSpd *= 0.25;
	}//end if


	//Change state to falling
	if(vSpd > 0) {
		state = player_state_fall;
	}//end if
		
	//MSG("JUMPING");
}//end script