///@desc skeleton_state_block_idle()
function skeleton_state_block_idle() {
	
	//regular speed
	hSpd = 0;
	move = 0;
	image_xscale = o_player.x > x ? 1 : -1;
	timer++
	var _act = 150;	//three seconds of blocking waiting stance
	
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