///@desc platform_state_bumper()
function platform_state_bumper() {
	if(move == 0) {
		move = choose(-1, 1);	//choose a random movement pattern to start
	}//end if
	
	if(col) {
		//when collided with a o_parent_wall it changes directions
		move *= -1;
		if(place_meeting(x, y-1, o_player)) {
			//avoid player sliding on platform when colliding with wall
			o_player.hSpd = 0;
		}//end if
	}//end if
}//end script