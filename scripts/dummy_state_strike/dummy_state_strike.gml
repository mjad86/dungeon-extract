///@desc dummy_state_strike()
function dummy_state_strike() {
	
	set_animation_sprite(spr, 0, 1);
	
	if(animation_end()) {
		sprite_index = dummyIdle;
		image_index = 0;
		image_speed = 0;
		spr = noone;
		state = dummy_state_idle;
	}//end if

}//end script