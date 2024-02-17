///@desc attack_slash2()
function attack_slash2() {
	hSpd = 0;	//for this attack we stop player movement							
	
	if(sprite_index != attack2) {
		//set animation sprite, image index and image speed
		sprite_index = attack2;
		image_index = 0;
		image_speed = 1;
		
		if(!ds_exists(hitByAttack, ds_type_list)) {
			hitByAttack = ds_list_create();
		}//end if
		ds_list_clear(hitByAttack); //clear hit list
	}//end if

	dmg = 35;			//momentary dmg assignement
	calc_attack(s_figther_attack2_mask, dmg);	//calculate attack
	
	if(animation_end()) {
		state = player_state_idle;	//if animation done then we return to idle state.
	}//end if
	
	if(global.attack && image_index >= 3) {
		state = player_state_attack;
		stateAttack = attack_slash3;
	}//end if
	
	
}//end script