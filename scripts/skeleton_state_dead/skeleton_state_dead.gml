///@desc skeleton_state_dead()
function skeleton_state_dead() {

	hSpd = 0;	//stop player from moving
	mask_index = noMask
	
	set_animation_sprite(skeletonDeath, 0, 1);	//set sprite
	
	if(animation_end()) {
		image_speed = 0;
	}//end if

}//end script