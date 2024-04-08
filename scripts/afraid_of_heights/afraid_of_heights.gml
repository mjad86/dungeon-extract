///@desc afraid_of_heights()
function afraid_of_heights() {

	if(onGround && afraidOfHeights && !place_meeting(x+hSpd, y+1, o_parent_wall)) {
		move = -move;
	}//end if

}//end script