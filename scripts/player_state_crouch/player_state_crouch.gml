///@desc player_state_crouch()
function player_state_crouch() {

	image_speed = 0;
	//regular movement
	hSpd = 0;
	move = (global.right - global.left); //just to set the facing
	
	//manually fall through a oneway platform
	go_through_oneway();
	
	//if not touchin ground then change state to fall
	if(vSpd > 0) {
		state = player_state_fall;
	}//end if
		
	if(crouching) && (!global.down || vSpd > 0) {
		//check if theres room to uncrouch
		mask_index = playerMask;
		//uncrouch if no solid wall
		if(!place_meeting(x, y, o_parent_wall)) {
			state = player_state_standing;	//change player state
			image_speed = -1;
			crouching = false;
		}//end if
		else {
			//cant uncrouch since there is a wall
			mask_index = playerRollMask;
		}//end else
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