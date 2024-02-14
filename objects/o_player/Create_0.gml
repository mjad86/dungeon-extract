///@desc Player Initialize variables
move = 0;											//move variable for determining inputs
moveSpdMax = 2;										//move max speed
accel = 0.1											//acceleration value, the higher it is the faster you gain speed
fric = 0.2;											//friction value, the higher it is the faster you stop
grav = 0.25;										//gravity force
jumpForce = -4										//jump force value
jumpCount = 0;										//counter for the amount of jumps player can do
jumpCountMax = 1;									//the maximun amount of jumps the player can do	
hSpd = 0;											//Horizontal speed
vSpd = 0;											//vertical speed
state = player_state_idle;							//Player state at start
lastState = noone									//control players last state
onGround = place_meeting(x, y+1, o_parent_wall);	//player is touching the ground
coyoteTime = 0;										//time in frames for player to make a jump when not on grund aka cyote time
coyoteTimeMax = 6;									//maximun time in frames for player to make a jump when not on grund aka cyote time
canDust = true;										//particle dust flag when moving
footstep = noone									//footstep SFX flag, obtained from the parent object we are steping
//Sprites
playerIdle = s_goblin_idle;
playerMove = s_goblin_walk;
playerJump = s_goblin_jump;
playerFall = s_goblin_fall;
playerCrouch = s_goblin_crouch;
playerMask = s_goblin_mask;
playerMaskCrouch = s_goblin_mask_crouch;

mask_index = playerMask;							//setting players sprite mask

if(global.targetX != -1) {
	//set players facing and position when created inside room after transition
	x = global.targetX;
	y = global.targetY;
	image_xscale = global.targetDir;
}//end if







