///@desc skeleton_state_idle
function skeleton_state_idle() {

	if(sprite_index != skeletonIdle) {
		sprite_index = skeletonIdle;
		image_index = 0;
		image_speed = 1;
		mask_index = skeletonMask;
	}//end if
	
	image_xscale = o_player.image_xscale;
	
}//end script