///@desc trap_rising_spikes_reset()
function trap_rising_spikes_reset() {
	resetSpikesTimer = max(0, resetSpikesTimer-1); //reset timer to 0
	
	if(o_player.inmune <= 0) {
		if(!ds_exists(hitByAttack, ds_type_list)) {
			hitByAttack = ds_list_create();
		}//end if
		ds_list_clear(hitByAttack);		//clear ds_list
	}//end if
	
	calc_attack_to_player(s_spike_trap_mask, dmg);	//calculate attack
	if(resetSpikesTimer <= 0) {
		if(image_speed != -1) {
			audio_play_sound_on(emitter, sfx_spikes_withdraw, false, 10);
			image_speed = -1;
		}//end if
		if(image_index <= 0) {
			audio_play_sound_on(emitter, sfx_trap_rdy, false, 10);
			image_speed = 0;
			spikesActivate = false;				//reset spike activation
			with(o_trigger) {
				if(slot == other.slot) {
					triggered = false;			//set activation to false to allow it to be activated again
					other.activated = false;	//tag activation
				}//end if
			}//end with
			state = noone;						//set the trap state as activated so it executes its code
		}//end if
	}//end if
}//end script