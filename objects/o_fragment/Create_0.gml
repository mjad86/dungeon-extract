deteriorate = 0;
grav = 0.5;
hSpd = random_range(-2, 2);
vSpd = bounceHeight;
fric = 0.05;
image_speed = 0;
image_index = irandom(image_number-1);
image_xscale = choose(1, -1);
image_angle = random(360);
debriSfx = noone;

//create audio emiter
emitter = audio_emitter_create();
audioMaxDistance = 1000;	//max distance to hear the emiter
audioDropsAt = 100;			//distance that starts to drop off