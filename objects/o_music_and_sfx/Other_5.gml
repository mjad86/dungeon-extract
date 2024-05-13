//If the music is reproducing we stopped it if we leave the room
if(room_get_name(room) == "r_town") {
	if(audio_is_playing(ost_town_melancholic_loop)) {
		audio_stop_sound(ost_town_melancholic_loop);
	}//end if
}//end if

if(room_get_name(room) == "r_swamp") {
	if(audio_is_playing(ost_forgotten_swamps)) {
		audio_stop_sound(ost_forgotten_swamps);
	}//end if
}//end if