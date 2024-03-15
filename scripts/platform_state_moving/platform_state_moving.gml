///@desc platform_state_moving()
function platform_state_moving() {
	#region//START DOWN AND GO UP	
	if(dir == 90) {
		if(delay <= 0) {		
			//get speed's
			hSpd = 0;
			vSpd = -1;			
		}//end if
		if(round(y) == round(ystart-radiusOrDist)) {
			vSpd = 0;					//we stop fully
			previousState = state;		//we store the previous state\
			if(audio_is_playing(sfx_elevator_moving)) {
				//if elevator sound is still moving we stop it
				audio_stop_sound(sfx_elevator_moving);
			}//end if
			screen_shake(2, 15);
			audio_play_sound_on(emitter, sfx_gate_stop, false, 10);		//end move sfx
			image_speed = 0;
			image_index = 0;
			state = platform_state_idle;//change state here
			with(o_parent_lever) {
				if(slot == other.slot) {
					//reset flag to set lever useable after gates finished opening/closing
					activated = false;
				}//end if
			}//end with
			dir = 270;		//change direction for next use
		}//end if
	}//end if
	#endregion
	
	#region//START UP AND GO DOWN	
	if(dir == 270) {
		if(delay <= 0) {
			//move vertically only
			//get speed's
			hSpd = 0;
			vSpd = 1;
		}//end if
		if(round(y) == round(ystart)) {
			vSpd = 0					//stop current spd
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
			dir = 90;		//change direction for next use
			image_speed = 0;
			image_index = 0;
		}//end if
	}//end if
	#endregion
	
	#region//START LEFT AND GO RIGHT
	if(dir == 0) {
		if(delay <= 0) {
		
		}//end if
	}//end if
	#endregion
	
	#region//START RIGHT AND GO LEFT	
		if(dir == 180) {
			if(delay <= 0) {
		
			}//end if
		}//end if
	#endregion
}//end script