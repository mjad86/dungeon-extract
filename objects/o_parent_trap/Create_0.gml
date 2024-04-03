///@desc initialize variables
image_speed = 0;
image_index = 0;
//moving
facing = 1;
move = 0;
moveSpd = 2;										//move speed
hSpd = 0;
vSpd = 0;
crouching = false;
//jumping
grav = 0.5;
gravMax = 10;
jumpMax = 1;
jumpCount = 0;
jumpHoldTimer = 0;
onGround = true;
//hanged based
coyoteHangFrames = 4;
coyoteHangTimer = 0;
//frame based
coyoteJumpFrames = 4;
coyoteJumpTimer = 0;
//moving Platforms
myMovingPlat = noone;
earlyMovePlathSpd = false;
downSlopeSemiSolid = noone;
forgetSemiSolid = noone;
movePlathSpd = 0;
//states and misc
activated = false;									//to determine if trap is activated
timer = 0;											//timer to activate
activateSlot = noone;								//trap slot behave to activate
state = noone;
blocked = false;
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






