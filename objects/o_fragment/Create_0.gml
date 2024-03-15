//moving
hSpd = random_range(-2.5, 2.5);
vSpd = bounceHeight;
fric = 0.05;
deteriorate = 0;
//jumping
grav = 0.5;
gravMax = 10;
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

image_speed = 0;
image_index = irandom(image_number-1);
image_xscale = choose(1, -1);
image_angle = random(360);
debriSfx = noone;

//create audio emiter
emitter = audio_emitter_create();
audioMaxDistance = 1000;	//max distance to hear the emiter
audioDropsAt = 100;			//distance that starts to drop off