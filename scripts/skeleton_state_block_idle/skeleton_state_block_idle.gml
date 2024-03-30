///@desc skeleton_state_block_idle()
function skeleton_state_block_idle() {

	if(sprite_index != skeletonBlockIdle) {
		sprite_index = skeletonBlockIdle;
		image_index = 0;
		image_speed = 1;
		//create block object here
	}//end if
	
	//regular speed
	hSpd = 0;
	move = image_xscale;
	
}//end script