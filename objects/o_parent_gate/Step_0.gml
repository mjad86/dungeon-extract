///@desc state machine execution

if(timer > 0) {
	//reset timer
	timer = max(timer-1, 0);
}//end if

script_execute(state);






