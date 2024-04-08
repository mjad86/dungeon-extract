// Inherit the parent event
event_inherited();

wispIdle = s_wisp;
wispBlink = s_wisp_blink;
blink = false;
timer = 0;
timerMax = irandom_range(150, 300);
taken = false;

//create audio emiter
emitter = audio_emitter_create();
audioMaxDistance = 1000;	//max distance to hear the emiter
audioDropsAt = 100;			//distance that starts to drop off

//set the model to falloff based on the distrance from the listener
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(emitter, x, y, 0);
audio_emitter_falloff(emitter, audioDropsAt, audioMaxDistance, 1);
