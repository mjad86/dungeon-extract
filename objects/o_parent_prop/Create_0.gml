//moving
move = 0;
runType = 0;
moveSpd[0] = 3;
moveSpd[1] = 5;
crouching = false;
vSpd = 0;											//vertical spd
hSpd = 0;											//horizontal spd
//jumping
grav = 0.5;											//froce of gravity
gravMax = 10;
onGround = true;
//first jump
jumpHoldFrames[0] = 12;
jSpd[0] = 6;
//second jump (the lower the values the less strength)
jumpHoldFrames[1] = 10;
jSpd[1] = 4;
//coyote time
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
//vfx and misc
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
