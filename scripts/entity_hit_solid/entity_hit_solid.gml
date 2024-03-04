///@desc entity_hit_solid
function entity_hit_solid() {
	create_hit_impact();	//create impact aprticle effect
	if(hurtSfx != -1) {
		if(!oneRandomSfx) {
			if(array_length(hurtSfx) > 1) {
				for(var _i = 0; _i < array_length(hurtSfx)-1; _i++) {
					audio_play_sound_on(emitter, hurtSfx[_i], false, 10); //play all hurt SFX atst
				}//end for
			}//end if
			else {
				audio_play_sound_on(emitter, hurtSfx[0], false, 10); //play hurt SFX
			}//end else	
		} //end if
		else {
			audio_play_sound_on(emitter, hurtSfx[irandom_range(0, array_length(hurtSfx)-1)], false, 10); //play hurt SFX
		}//end else
	}//end if
	flash = 0.5;
}//end script