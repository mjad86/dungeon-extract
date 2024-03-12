//movement setup
image_index = 0;
image_speed = 0;
vSpd = 0;						//vertical speed			
hSpd = 0;						//horizontal speed
hSpdMax = 1.5;				//move max speed
accel = 0.25;					//acceleration value, the higher it is the faster you gain speed
move = 0;						//movement flag -1 for lft/up 1 for right/down 0 for noone
previousState = noone;			//previous state flag
col = false;
delay = 0;						//delay flag

//create audio emiter
emitter = audio_emitter_create();
audioMaxDistance = 1000;	//max distance to hear the emiter
audioDropsAt = 100;			//distance that starts to drop off

//set the model to falloff based on the distrance from the listener
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(emitter, x, y, 0);
audio_emitter_falloff(emitter, audioDropsAt, audioMaxDistance, 1);