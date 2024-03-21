audio_emitter_position(emitter, x, y, 0); //update emitter position

//example sound usague instead of audio_play_sound use:
//audio_play_sound_on(emitter, sfx_name, false, 10);

///@desc behavior
if(hp < currentHp) {
	currentHp--;
}//end if
else {
	currentHp = hp;
}//end else