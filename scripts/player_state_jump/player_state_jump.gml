///@desc player_state_jump()
function player_state_jump() {
	
	//set sprite	
	if(animation_end()) {
		sprite_index = playerJump;
		image_index = floor(sprite_get_number(sprite_index))-1;
		image_speed = 0;
	}//end if
	else {
		sprite_index = playerJump;
		image_index = 0;
		image_speed = 1;
	}//end else
	
	if(global.jumpRelease) {
		if(vSpd < 0) {
			//controls jump height if jump button not held
			vSpd *= 0.25;
		}//end if
	}//end if

	//Change state to falling
	if(vSpd > 0) {
		state = player_state_fall;
	}//end if
		
	//MSG("JUMPING");
}//end script