// Inherit the parent event
event_inherited();
visible = true;
image_speed = 0;
image_index = 0;
delay = 0;						//delay flag
previousState = noone;
state = platform_state_idle;

//create audio emiter
emitter = audio_emitter_create();
audioMaxDistance = 1000;	//max distance to hear the emiter
audioDropsAt = 100;			//distance that starts to drop off

//set the model to falloff based on the distrance from the listener
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(emitter, x, y, 0);
audio_emitter_falloff(emitter, audioDropsAt, audioMaxDistance, 1);

//NOTE for variable rotSpd: divided by the amount of frames (3 seconds to complete the rotation in this case)

