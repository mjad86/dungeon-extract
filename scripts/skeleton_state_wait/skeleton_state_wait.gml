///@desc skeleton_state_wait()
function skeleton_state_wait(){

	move = 0;
	
	if(sprite_index != skeletonIdle) {
		sprite_index = skeletonIdle;
		image_index = 0;
		image_speed = 1;
		mask_index = skeletonMask;
	}//end if
	
	timer++	//increase the timer flag
	var _act = 60;	//60 frames or 1 second
	
	if(timer > _act) {
		//when timer has reached 2 seconds we change to state idle
		timer = 0;
		sprite_index = skeletonMove;
		image_index = 0;
		image_speed = 1;
		move = choose(1, -1)
		state = skeleton_state_idle;
	}//end if

}//end script