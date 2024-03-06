onGround = place_meeting(x, y+1, o_parent_wall);	//player is touching the ground
vSpd = 0;											//vertical spd
hSpd = 0;											//horizontal spd

grav = 0.5;											//froce of gravity
flash = 0;
uFlash = shader_get_uniform(sh_white_flash, "flash");
shadow = s_dummy_shadow;
state = prop_state_idle;
brokenMask = noone;

//create audio emiter
emitter = audio_emitter_create();
audioMaxDistance = 1000;	//max distance to hear the emiter
audioDropsAt = 100;			//distance that starts to drop off

//set the model to falloff based on the distrance from the listener
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(emitter, x, y, 0);
audio_emitter_falloff(emitter, audioDropsAt, audioMaxDistance, 1);

image_speed = 0;		
image_index = 0;



