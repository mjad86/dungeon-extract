// Inherit the parent event
event_inherited();
moveSpd[0] = 1;
state = rat_state_idle;
decide = 0
sprites = choose(0, 1);
shadow = s_rat_shadow;

//randomly choose a sprite
if(sprites > 0) {
	ratIdle = s_rat_01_idle;
	ratMove = s_rat_01_move;
}//end if
else {
	ratIdle = s_rat_02_idle;
	ratMove = s_rat_02_move;
}//end else

audioMaxDistance = 300;	//max distance to hear the emiter
audioDropsAt = 30;		//distance that starts to drop off

//set the model to falloff based on the distrance from the listener
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(emitter, x, y, 0);
audio_emitter_falloff(emitter, audioDropsAt, audioMaxDistance, 1);