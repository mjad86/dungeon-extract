///@desc rat_state_move()
function rat_state_move(){

	set_animation_sprite(ratMove, 0, 1);
	
	decide++;		//increase decide

	var _timer = random_range(60, 180);	//in frames
		
	if(decide >= _timer) {
		state = rat_state_idle;
		decide = 0;
	}//end if
	
}//end script