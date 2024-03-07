///@desc attack_slash3()
function attack_slash3() {
	
	if(movingHPlatform != noone) {
		//when in moving platform
		hSpd = 0 + movingHPlatform.hSpd;
	}//end if
	else {
		//regular movement
		hSpd = 0;
	}//end else
	
	if(sprite_index != attack3) {
		//set animation sprite, image index and image speed
		sprite_index = attack3;
		image_index = 0;
		image_speed = 1;
		
		if(!ds_exists(hitByAttack, ds_type_list)) {
			hitByAttack = ds_list_create();
		}//end if
		ds_list_clear(hitByAttack); //clear hit list
	}//end if

	dmg = 50;			//momentary dmg assignement
	calc_attack(s_figther_attack3_mask, dmg);	//calculate attack
	
	if(animation_end()) {
		state = player_state_idle;	//if animation done then we return to idle state.
	}//end if
		
}//end script