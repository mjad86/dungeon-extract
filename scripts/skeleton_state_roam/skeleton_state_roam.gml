///@desc skeleton_state_roam()
function skeleton_state_roam() {
	
	if(sprite_index != skeletonMove) {
		sprite_index = skeletonMove;
		image_index = 0;
		image_speed = 1;		
	}//end if
	
	image_xscale = move;
	timer++
	
	if(timer > 120) {
		timer = 0;
		state = skeleton_state_idle;
	}//end if

}//end script