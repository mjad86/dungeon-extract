with(o_player) {
	state = player_state_lock;
}//end with

if(leading == OUT) {
	percent = min(1, percent + TRANSITION_SPEED);
	if(percent >= 1) {
		//if screen is fully obscured
		room_goto(target);	//transition
		leading = IN;
	}//end if
}//end if
else {
	//leading is IN
	percent = max(0, percent - TRANSITION_SPEED);
	if(percent <= 0) {
		//if screen is fully revealed
		with(o_player) {
			state = player_state_idle;	//release player
		}//end with
		instance_destroy();
	}//end if
}//end else