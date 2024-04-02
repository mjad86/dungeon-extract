/// @description broadcast sfx per msg
sprite_broadcast("footstep2", function() {	
		if(audio_group_is_loaded(SFX) && footstep != noone) {
			audio_play_sound_on(emitter, footstep, false, 100); 
		}//end if
	}//end script
);

//add aditional functions for other boradcast msg based sfx here







