///@desc skeleton_state_hurt()
function skeleton_state_hurt() {
	
	hSpd = 0;	//stop player from moving
	
	set_animation_sprite(skeletonHurt, 0, 1);	//set sprite
	
	if(animation_end()) {
		//return to idle
		state = skeleton_state_idle;
	}//end if
	
}//end script