//movement setup
image_index = 0;
image_speed = 0;
vSpd = 0;						//vertical speed			
hSpd = 0;						//horizontal speed
moveSpdMax = 1.5;				//move max speed
accel = 0.25;					//acceleration value, the higher it is the faster you gain speed
move = 0;						//movement flag -1 for lft/up 1 for right/down 0 for noone
previousState = noone;			//previous state flag
col = false;