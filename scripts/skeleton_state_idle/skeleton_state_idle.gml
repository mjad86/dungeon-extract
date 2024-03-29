///@desc skeleton_state_idle
function skeleton_state_idle() {
		
	if(sprite_index != skeletonIdle) {
		sprite_index = skeletonIdle;
		image_index = 0;
		image_speed = 1;
		mask_index = skeletonMask;
	}//end if
	
	timer++
	
	if(timer > 120) {
		timer = 0;
		sprite_index = skeletonMove;
		image_index = 0;
		image_speed = 1;
		state = skeleton_state_roam;
	}//end if

	
}//end script