//moving
move = 0;
runType = 0;
moveSpd[0] = 3;
moveSpd[1] = 5;
hSpd = 0;
vSpd = 0;
xTo = 0;
yTo = 0;
footstep = noone						//footstep SFX flag, obtained from the parent object we are steping
crouching = false;
//state
state = prop_state_idle;
stateAttack = noone							//state of dynamic attacks
hitByAttack = -1;							//stores a ds_list for entity id's we hit
onGround = true;
blocked = false;
attackRangeX = 0;
attackRangeY = 0;
los = false;
alerted = false;
//jumping
grav = 0.5;
gravMax = 10;
jumpMax = 1;
jumpCount = 0;
jumpHoldTimer = 0;
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
hurt = false;
healthBar = noone;
//vfx and misc
flash = 0;
uFlash = shader_get_uniform(sh_white_flash, "flash");
shadow = noone;
currentHp = hp;

//create audio emiter
emitter = audio_emitter_create();
audioMaxDistance = 1000;	//max distance to hear the emiter
audioDropsAt = 100;			//distance that starts to drop off

//set the model to falloff based on the distrance from the listener
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(emitter, x, y, 0);
audio_emitter_falloff(emitter, audioDropsAt, audioMaxDistance, 1);