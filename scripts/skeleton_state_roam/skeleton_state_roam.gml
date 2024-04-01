///@desc skeleton_state_roam()
function skeleton_state_roam() {
	
	if(sprite_index != skeletonMove) {
		sprite_index = skeletonMove;
		image_index = 0;
		image_speed = 1;		
	}//end if
	
	timer++	//increase timer flag
	
	if(timer > 120) {
		//if 2 seconds have passed then go to idle state
		timer = 0;
		state = skeleton_state_idle;
	}//end if
	
	if(los && o_player.state != player_state_dead) {
		//if the player is withing the line of sight of the enemy it starts chase
		timer = 0;
		xTo = o_player.x;
		move = xTo < x ? -1 : 1;
		state = skeleton_state_chase;
	}//end if
	
}//end script