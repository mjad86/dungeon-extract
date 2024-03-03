///@desc here we will set if the bypass will be used in the room. i
//dentified by roomnames in the future, the default is false to allow the echo
//audio_bus_main.effects[0].bypass = !audio_bus_main.effects[0].bypass; //insert this inside an if statement or switch case depending on the room you want the effect
if(audio_group_is_loaded(Music)) {
	if(room_get_name(room) == "r_dungeon" || room_get_name(room) == "r_tests_01") {
		//sfx when starting dungeon
		audio_play_sound(ost_drum_dungeon_start, 10, false);
	}//end if
}//end if









