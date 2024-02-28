if(activated) {
	audio_emitter_position(emitter, x, y, 0);	//set emitter position
	
	//If the trap is activated
	timer = max(0, timer-1); //reset timer to 0
	onGround = place_meeting(x, y+1, o_parent_wall);	//verify if trap is touching ground

	switch(activateSlot) {
		case 0:
			#region//Falling spikes behaviour
			if(timer <= 0) {
				state = trap_falling_spikes_activate;
			}//end if
			#endregion
		break;
		case 1:
			#region//Rising spikes from floor behaviour
			if(timer <= 0) {
				if(!spikesActivate) {
					audio_play_sound_on(emitter, sfx_trap_activate, false, 100); //activation sfx here
					spikesActivate = true;
					state = trap_rising_spikes_activate;
				}//end if
			}//end if
			#endregion
		break;
	}//end switch
	
collision();	//Apply movement
script_execute(state);	//execute state
	
}//end if
