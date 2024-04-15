/// @description broadcast sfx per msg
sprite_broadcast("footstep2", function() {	
		if(audio_group_is_loaded(SFX) && footstep != noone) {
			//audio_play_sound_on(emitter, footstep, false, 10);
			var _sfx = choose(sfx_skeleton_footstep_01, sfx_skeleton_footstep_03, sfx_skeleton_footstep_04, sfx_skeleton_footstep_05);
			audio_play_sound_on(emitter, _sfx, false, 10);
		}//end if
	}//end script
);

sprite_broadcast("attack", function() {	
		if(audio_group_is_loaded(SFX)) {
			var _sfx = choose(sfx_sword_attack_1, sfx_sword_attack_2);
			audio_play_sound_on(emitter, _sfx, false, 10); 
		}//end if
	}//end script
);

//add aditional functions for other boradcast msg based sfx here
