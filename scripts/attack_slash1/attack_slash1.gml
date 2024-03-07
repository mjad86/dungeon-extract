///@desc attack_slash1()
function attack_slash1() {
	if(movingHPlatform != noone) {
		//when in moving platform
		hSpd = 0 + movingHPlatform.hSpd;
	}//end if
	else {
		//regular movement
		hSpd = 0;
	}//end else
	
	if(mask_index != playerMask) {
		mask_index = playerMask;	//set player mask to regular mask
	}//end if
	
	if(sprite_index != attack1) {
		//set animation sprite, image index and image speed
		sprite_index = attack1;
		image_index = 0;
		image_speed = 1;
		
		if(!ds_exists(hitByAttack, ds_type_list)) {
			hitByAttack = ds_list_create();
		}//end if
		ds_list_clear(hitByAttack); //clear hit list
	}//end if

	dmg = 25;			//momentary dmg assignement
	calc_attack(s_figther_attack1_mask, dmg);	//calculate attack
		
	if(animation_end()) {
		state = player_state_idle;	//if animation done then we return to idle state.
	}//end if
	
	if(global.attack && image_index >= 3) {
		//sfx
		audio_play_sound(choose(swordSwing1, swordSwing2, swordSwing3), 10, false);
		state = player_state_attack;
		stateAttack = attack_slash2;
	}//end if
	
}//end script