///@desc skeleton_state_block()
function skeleton_state_block() {
	
	//regular speed
	hSpd = 0;
	move = 0;	
	timer = 0;
	
	if(sprite_index != skeletonBlock) {
		sprite_index = skeletonBlock;
		image_index = 0;
		image_speed = 1;
	}//end if
	
	if(animation_end()) {
		timer = 0;
		sprite_index = skeletonBlockIdle;
		image_index = 0;
		image_speed = 0;
		state = skeleton_state_block_idle;
	}//end if
	
}//end script