///@desc player_state_crouch()
function player_state_crouch() {

	image_speed = 0;
	hSpd = 0;
	
	//if not touchin ground then change state to fall
	if(!onGround) {
		state = player_state_fall;
	}//end if
	
	if(!global.down) {
		state = player_state_standing;	//change player state
		image_speed = -1;
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
	
	//attack
	if(global.attack) {
		//sfx
		audio_play_sound(choose(swordSwing1, swordSwing2, swordSwing3), 10, false);
		state = player_state_attack;			//set player state to attack
		stateAttack = attack_slash1;			//set the attack to be done
	}//end if
	
	//MSG("Crouch");
}//end script