//movement setup
vSpd = 0;
hSpd = 0;
moveSpdMax = o_player.moveSpdMax;					//move max speed
accel = o_player.accel;								//acceleration value, the higher it is the faster you gain speed
fric = o_player.fric;								//friction value, the higher it is the faster you stop
move = choose(-1, 1);