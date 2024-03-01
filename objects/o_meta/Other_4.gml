if(audio_group_is_loaded(Music)) {
	if(room_get_name(room) == "r_tests_01") {
		//sfx when starting dungeon
		audio_play_sound(ost_drum_dungeon_start, 10, false);
	}//end if
}//end if