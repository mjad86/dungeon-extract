/// @description broadcast sfx per msg

sprite_broadcast("footstep", function() {	
		if(audio_group_is_loaded(SFX) && footstep != noone) {
			audio_play_sound(footstep, 100, false); 
		}//end if
	}//end script
);

//add aditional functions for other boradcast msg based sfx here







