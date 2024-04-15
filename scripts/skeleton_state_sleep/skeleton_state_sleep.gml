///@desc skeleton_state_sleep() 
function skeleton_state_sleep() {
	
	move = 0;
	
	if(sprite_index != skeletonSleep) {
		sprite_index = skeletonSleep;
		image_index = 0;
		image_speed = 0;
	}//end if
	
	if(point_distance(x, y, o_player.x, o_player.y) < aggroRange) {
		if(image_speed == 0) {
			image_speed = 1;
			//rise sfx here
			audio_play_sound_on(emitter, sfx_skeleton_rise, false, 10);
		}//end if
	}//end if
	
	if(animation_end()) {
		state = skeleton_state_idle;
	}//end if
	
}//end script