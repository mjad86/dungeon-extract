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
	
	//attack in the air
	if(global.attack && actionBuffer <= 0) {
		//sfx
		actionBuffer = ACTION_BUFFER;			//set the value for the action buffer
		audio_play_sound(choose(swordSwing1, swordSwing2, swordSwing3), 10, false);
		previousState = state;
		state = player_state_attack;			//set player state to attack
		stateAttack = attack_air;			//set the attack to be done
	}//end if
	
	//Change state to falling
	if(vSpd > 0) {
		state = player_state_fall;
	}//end if
	
	if(onGround) {
		state = player_state_idle;
	}//end if
		
	//MSG("JUMPING");
}//end script