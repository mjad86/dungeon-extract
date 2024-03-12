///@desc player_state_crouching()
function player_state_crouching() {
	
	if(movingHPlatform != noone) {
		//when in moving platform
		hSpd = 0 + movingHPlatform.hSpd;
	}//end if
	else {
		//regular movement
		hSpd = 0;
	}//end else
	
	set_animation_sprite(playerCrouch, 0, 1);
		
	if(animation_end()) {
		state = player_state_crouch;	//change player state
		image_index = sprite_get_number(playerCrouch) - 1;
		image_speed = 0;
	}//end if

	if(global.jump) {
		//go through one way platforms
		goThrough = true;
	}//end if
	
	//dodge
	if(global.dodge) {
		previousState = state;
		state = player_state_roll;				//change state to roll
		mask_index = playerRollMask;			//set mask;
		moveDistanceRemaining = rollDistance;	//set distance
		audio_play_sound(choose(sfx_grunt_human, sfx_grunt_human_2), 100, false);	//jumping sfx grunt
		audio_play_sound(sfx_rolling_1, 10, false); //sfx
	}//end if
	
	//if not touchin ground then change state to fall
	if(!onGround) {
		state = player_state_fall;
	}//end if
	
	//MSG("Crouching");
}//end script