///@desc dummy_state_idle()
function dummy_state_idle() {
	if(flash != 0 && spr == noone) {
		spr = choose(dummyHit3, dummyHit2, dummyHit1);
		state = dummy_state_strike; 
	}//end if
}//end script