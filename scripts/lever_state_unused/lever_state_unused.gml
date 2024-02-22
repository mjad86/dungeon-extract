///@desc lever_state_unused()
function lever_state_unused() {
	
	if(place_meeting(x, y , o_player)) {
		state =lever_state_using;
	}//end if
	
}//end script