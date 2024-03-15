//moving
move = 0;
runType = 0;
moveSpd[0] = 3;
moveSpd[1] = 5;
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
crushTimer = 0;
crushDeathTime = 3;
//vfx and misc
flash = 0;
uFlash = shader_get_uniform(sh_white_flash, "flash");
shadow = noone;
state = prop_state_idle;

//create audio emiter
emitter = audio_emitter_create();
audioMaxDistance = 1000;	//max distance to hear the emiter
audioDropsAt = 100;			//distance that starts to drop off

//set the model to falloff based on the distrance from the listener
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(emitter, x, y, 0);
audio_emitter_falloff(emitter, audioDropsAt, audioMaxDistance, 1);