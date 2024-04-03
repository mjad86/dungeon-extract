///@desc attack_air()
function attack_air() {
	
	if(mask_index != playerMask) {
		mask_index = playerMask;	//set player mask to regular mask
	}//end if
	
	run = 0; //add to controllers as a global.run key and set it there if you wish to apply a diference between walk and run spd
	move = (global.right - global.left);	//input calculation/Direction
	//get hSpd with variable spd's if implemented
	runType = run;
	hSpd = move * moveSpd[runType];
	
	if(!staggerEnemy) {
		//reset stagger flag
		staggerEnemy = false;
	}//end if
		
	if(sprite_index != playerAirAttack) {
		//set animation sprite, image index and image speed
		sprite_index = playerAirAttack;
		image_index = 0;
		image_speed = 1;
		
		if(!ds_exists(hitByAttack, ds_type_list)) {
			hitByAttack = ds_list_create();
		}//end if
		ds_list_clear(hitByAttack); //clear hit list
	}//end if

	dmg = 25;									//momentary dmg assignement
	calc_attack(playerAirAttackMask, dmg);	//calculate attack
	
	if(onGround || animation_end()) {
		state = player_state_idle;
		vSpdOnImpact = 0;	
	}//end if

		
}//end script