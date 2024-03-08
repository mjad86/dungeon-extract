///@desc lever_state_using()
function lever_state_using() {
		
	if(image_speed != 1) {
		//add SFX here
		audio_play_sound_on(emitter, sfx, false, 10);
		image_index = 0;	//set index to start of animation
		image_speed = 1;	//set animation speed
	}//end if
		
	if(animation_end()) {
		#region//DOORS, GATES AND SECRET PATHS
		with(o_parent_gate) {
			if(slot == other.slot) {
				audio_play_sound_on(emitter, sfx, false, 10);	//gate moving sfx
				previousState = state;							//set gate previous state
				ds_map_replace(o_meta.saveData, key, true);		//save state as gate open
				state = gate_state_opening;						//change state
				other.activated = true;							//flag to set lever useless until gates finish opening/closing
			}//end if
		}//end with	
		#endregion
		#region//ONEWAY MOVING PLATFORM
		with(o_parent_moving_platform) {
			if(slot == other.slot) {
				//add sfx of activation here
				previousState = state;							//set gate previous state
				state = platform_state_decide_movement;					//change state
				other.activated = true;							//flag to set lever useless until platform finish movement
			}//end if
		}//end with
		#endregion
		#region//SOLID MOVING PLATFORM
		with(o_parent_moving_platform_solid) {
			if(slot == other.slot) {
			//add sfx of activation here
				previousState = state;							//set gate previous state
				state = platform_state_decide_movement;					//change state
				other.activated = true;							//flag to set lever useless until platform finish movement		
			}//end if
		}//end with
		#endregion
		
		ds_map_replace(o_meta.saveData, key, true);	//save state in ds_map of lever
		if(previousState == lever_state_unused) {
			state = lever_state_used;
		}//end if
		else {
			state = lever_state_unused;
		}//end else
	}//end if
}//end script