///@desc initialize variables
image_speed = 0;
image_index = 0;
activated = false;									//to determine if trap is activated
timer = 0;											//timer to activate
activateSlot = noone;								//trap slot behave to activate
hSpd = 0;											//horizontal speed
vSpd = 0;											//vertical speed
moveSpd = 2;										//move speed
grav = 0.25;										//gravity force
onGround = place_meeting(x, y+1, o_parent_wall);	//player is touching the ground
state = noone;
hitByAttack = -1;	
dmg = 25;											//default dmg the trap does
previousMask = mask_index;

//slot 1 related variables
spikesActivate = false;
resetSpikesTimer = 0;
delay = 0;

//create audio emiter
emitter = audio_emitter_create();
audioMaxDistance = 1000;	//max distance to hear the emiter
audioDropsAt = 100;			//distance that starts to drop off

//set the model to falloff based on the distrance from the listener
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(emitter, x, y, 0);
audio_emitter_falloff(emitter, audioDropsAt, audioMaxDistance, 1);





