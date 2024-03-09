///@desc platform_state_moving_v()
function platform_state_moving_v() {

	if(startMove == MOVE.UP) {
		if(round(y) == round(ystart-distanceToMove)) {
			vSpd = 0;					//we stop fully
			move = 0;					//we stop movement
			previousState = state;		//we store the previous state\
			if(audio_is_playing(sfx_elevator_moving)) {
				//if el;evator sound is still moving we stop it
				audio_stop_sound(sfx_elevator_moving);
			}//end if
			screen_shake(2, 15);
			audio_play_sound_on(emitter, sfx_gate_stop, false, 10);		//end move sfx
			state = platform_state_idle;//change state here
			with(o_parent_lever) {
				if(slot == other.slot) {
					//reset flag to set lever useable after gates finished opening/closing
					activated = false;
				}//end if
			}//end with
			startMove = MOVE.DOWN;		//change direction for next use
			image_speed = 0;
			image_index = 0;
		}//end if
	}//end if
	
	if(startMove == MOVE.DOWN) {
		if(round(y) == round(ystart)) {
			vSpd = 0					//stop current spd
			move = 0;					//stop movement
			previousState = state;		//we store the previous state
			if(audio_is_playing(sfx_elevator_moving)) {
				//if el;evator sound is still moving we stop it
				audio_stop_sound(sfx_elevator_moving);
			}//end if
			audio_play_sound_on(emitter, sfx_gate_stop, false, 10);		//end move sfx
			screen_shake(2, 15);
			state = platform_state_idle;//change state
			with(o_parent_lever) {
				if(slot == other.slot) {
					//reset flag to set lever useable after gates finished opening/closing
					activated = false;
				}//end if
			}//end with
			startMove = MOVE.UP;		//change direction for next use
			image_speed = 0;
			image_index = 0;
		}//end if
	}//end if

}//end script