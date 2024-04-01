///@desc skeleton_state_attack_01()
function skeleton_state_attack_01() {

	//regular movement
	hSpd = 0;
	if(sprite_index != skeletonAttack1) {
		//set animation sprite, image index and image speed
		sprite_index = skeletonAttack1;
		image_index = 0;
		image_speed = 1;
		
		if(!ds_exists(hitByAttack, ds_type_list)) {
			hitByAttack = ds_list_create();
		}//end if
		ds_list_clear(hitByAttack); //clear hit list
	}//end if

	dmg = 25;									//momentary dmg assignement
	calc_attack_to_player(s_skeleton_attack_01_mask, dmg);	//calculate attack
		
	if(animation_end()) {
		state = enemy_state_attack;					//set enemy state to attack
		stateAttack = skeleton_state_attack_02;		//set the attack to be done
	}//end if
}//end script