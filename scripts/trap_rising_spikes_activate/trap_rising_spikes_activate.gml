///@desc trap_rising_spikes_activate()
function trap_rising_spikes_activate() {
	
	delay = max(0, delay-1); //reset delay back to 0
	if(o_player.inmune <= 0) {
		if(!ds_exists(hitByAttack, ds_type_list)) {
			hitByAttack = ds_list_create();
		}//end if
		ds_list_clear(hitByAttack);	//clear ds_list
	}//end if
	if(delay <= 0) {
		if(image_speed != 2) {
			audio_play_sound_on(emitter, sfx_spikes_rise, false, 10);
			image_speed = 2;
		}//end if
		calc_attack_to_player(s_spike_trap_mask, dmg);	//calculate attack
		if(animation_end()) {
			image_speed = 0;
			resetSpikesTimer = ROOM_SPEED * 4;
			state = trap_rising_spikes_reset;
		}//end if
	}//end if

}//end script