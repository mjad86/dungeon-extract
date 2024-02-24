///@desc lever_state_using()
function lever_state_using() {
		
	if(image_speed != 1) {
		//add SFX here
		audio_play_sound_on(emitter, sfx, false, 10);
		image_index = 0;	//set index to start of animation
		image_speed = 1;	//set animation speed
	}//end if
		
	if(animation_end()) {
		with(o_parent_gate) {
			if(slot == other.slot) {
				audio_play_sound_on(emitter, sfx, false, 10);	//gate moving sfx
				previousState = state;							//set gate previous state
				ds_map_replace(o_meta.saveData, key, true);		//save state as gate open
				state = gate_state_opening;						//change state
			}//end if
		}//end with	
		ds_map_replace(o_meta.saveData, key, true);	//save state in ds_map of lever
		if(previousState == lever_state_unused) {
			state = lever_state_used;
		}//end if
		else {
			state = lever_state_unused;
		}//end else
	}//end if
}//end script