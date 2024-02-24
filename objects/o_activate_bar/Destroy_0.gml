if(activationTime <= 0) {
	//activate instance
	inst.previousState = inst.state;
	inst.state = lever_state_using;
}//end if
o_player.state = player_state_idle; //reset player state

if(audio_is_playing(sfx_interacting)) {
	//play sfx
	audio_stop_sound(sfx_interacting);
}//end if