///@desc skeleton_state_idle
function skeleton_state_idle() {
	
	move = 0;
	
	if(sprite_index != skeletonIdle) {
		sprite_index = skeletonIdle;
		image_index = 0;
		image_speed = 1;
		mask_index = skeletonMask;
	}//end if
	
	timer++	//increase the timer flag
	
	if(timer > 120) {
		//when timer has reached 2 seconds we change to state idle
		timer = 0;
		sprite_index = skeletonMove;
		image_index = 0;
		image_speed = 1;
		move = choose(1, -1)
		state = skeleton_state_roam;
	}//end if
	
	if(los && o_player.state != player_state_dead) {
		//if the player is withing the line of sight of the enemy it starts chase
		timer = 0;
		xTo = o_player.x;
		move = xTo < x ? -1 : 1;
		state = skeleton_state_chase;
	}//end if

	
}//end script