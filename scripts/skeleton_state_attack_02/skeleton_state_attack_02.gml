///@desc skeleton_state_attack_02()
function skeleton_state_attack_02() {

	//regular movement
	hSpd = 0;
	if(sprite_index != skeletonAttack2) {
		//set animation sprite, image index and image speed
		sprite_index = skeletonAttack2;
		image_index = 0;
		image_speed = 1;
		
		if(!ds_exists(hitByAttack, ds_type_list)) {
			hitByAttack = ds_list_create();
		}//end if
		ds_list_clear(hitByAttack); //clear hit list
	}//end if

	dmg = 25;									    //momentary dmg assignement
	calc_attack_to_player(s_skeleton_attack_02_mask, dmg);	//calculate attack
		
	if(animation_end()) {
		state = skeleton_state_idle;			//set enemy state to idle
	}//end if

}//end script