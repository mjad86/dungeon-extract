if(audio_is_playing(sfx_gate_open)) {
	//fixes bug of sfx being listened in other rooms
	audio_stop_sound(sfx_gate_open);
}//end if