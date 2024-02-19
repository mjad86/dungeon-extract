///@desc entity_hit_solid
function entity_hit_solid() {
	if(hurtSfx != -1) {
		if(array_length(hurtSfx) > 2) {
			audio_play_sound_on(emitter, hurtSfx[0], false, 10); //play hurt SFX
			audio_play_sound_on(emitter, hurtSfx[1], false, 10); //play hurt SFX
			audio_play_sound_on(emitter, hurtSfx[2], false, 10); //play hurt SFX
		}//end if
		else if(array_length(hurtSfx) > 1) {
			audio_play_sound_on(emitter, hurtSfx[0], false, 10); //play hurt SFX
			audio_play_sound_on(emitter, hurtSfx[1], false, 10); //play hurt SFX
		}//end else if
		else {
			audio_play_sound_on(emitter, hurtSfx[0], false, 10); //play hurt SFX
		}//end else		
	}//end if
	flash = 0.5;
}//end script