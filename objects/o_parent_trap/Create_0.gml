///@desc initialize variables
activated = false;									//to determine if trap is activated
timer = 0;											//timer to activate
activateSlot = noone;								//trap slot behave to activate
hSpd = 0;											//horizontal speed
vSpd = 0;											//vertical speed
moveSpd = 2;										//move speed
grav = 0.25;										//gravity force
onGround = place_meeting(x, y+1, o_parent_wall);	//player is touching the ground






