///@desc Player Initialize variables
move = 0;											//move variable for determining inputs
moveSpdMax = 3;										//move max speed
accel = 0.2											//acceleration value, the higher it is the faster you gain speed
fric = 0.2;											//friction value, the higher it is the faster you stop
grav = 0.5;											//gravity force
jumpForce = -8										//jump force value
jumpCount = 0;										//counter for the amount of jumps player can do
jumpCountMax = 1;									//the maximun amount of jumps the player can do	
rollDistance = 100;									//rolling distance in pixels
moveDistanceRemaining = 0							//flag to calcualte rolling distance remaining
rollSpd = 4;										//how fast we roll
hSpd = 0;											//Horizontal speed
vSpd = 0;											//vertical speed
state = player_state_idle;							//Player state at start
stateAttack = attack_slash1							//state of dynamic attacks
hitByAttack = -1;									//stores a ds_list for entity id's we hit
lastState = noone									//control players last state
onGround = place_meeting(x, y+1, o_parent_wall);	//player is touching the ground
coyoteTime = 0;										//time in frames for player to make a jump when not on grund aka cyote time
coyoteTimeMax = 6;									//maximun time in frames for player to make a jump when not on grund aka cyote time
canDust = true;										//particle dust flag when moving
footstep = noone									//footstep SFX flag, obtained from the parent object we are steping
activateBar = noone									//flag for activating bar

//Sprites
playerIdle = s_figther_idle;
playerMove = s_figther_walk;
playerJump = s_figther_jump;
playerFall = s_figther_fall;
playerRoll = s_figther_roll;
playerMask = s_figther_mask;
playerRollMask = s_figther_roll_mask;
attack1 = s_figther_attack1
attack2 = s_figther_attack2;
attack3 = s_figther_attack3;
playerBlock = s_figther_block;

//sfx
swordSwing1 = sfx_sword_swing_1;
swordSwing2 = sfx_sword_swing_2;
swordSwing3 = sfx_sword_swing_3;

mask_index = playerMask;							//setting players sprite mask

if(global.targetX != -1) {
	//set players facing and position when created inside room after transition
	x = global.targetX;
	y = global.targetY;
	image_xscale = global.targetDir;
}//end if

//create shadow
instance_create_layer(x, y, "Player", o_player_shadow);
//create lantern this is momentary
//instance_create_layer(x, y, "Player", o_lantern);
//audio listener orientation
audio_listener_orientation(0,1,0,0,0,1);







