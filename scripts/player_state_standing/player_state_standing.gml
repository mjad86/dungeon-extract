///@desc player_state_standing()
function player_state_standing() {
	
	hspd = 0;
	
	if(round(image_index) <= 0) {
		state = player_state_idle;	//change player state
	}//end if
	
	//if not touchin ground then change state to fall
	if(!onGround) {
		state = player_state_fall;
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
	
	//MSG("Standing");
}//end script