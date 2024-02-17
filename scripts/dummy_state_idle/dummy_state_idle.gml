///@desc dummy_state_idle()
function dummy_state_idle() {
	if(flash != 0 && spr == noone) {
		spr = choose(dummyHit3, dummyHit2, dummyHit1);
		set_animation_sprite(spr, 0, 1);
	}//end if
	else {
		if(animation_end()) {
			if(sprite_index != dummyIdle) {
				sprite_index = dummyIdle;
				image_index = 0;
				image_speed = 1;
				spr = noone;
			}//end if
		}//end if
	}//end else
}//end script