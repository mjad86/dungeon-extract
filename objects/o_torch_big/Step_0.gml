// Inherit the parent event
event_inherited();

if(audio_group_is_loaded(SFX) && playSfx) {
	//if audio group is laoded we play sfx on repeat since it will sound until we leave the room
	audio_play_sound_on(emitter, sfx_crackling_fire, true, 10);
	playSfx = false;
}//end if

