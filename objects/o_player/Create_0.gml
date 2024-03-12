///@desc Player Initialize variables
movingHPlatform = noone;							//flag that stores the id of the moving horizontal platform or noone
movingVPlatform = noone;							//flag that stores the id of the moving vertical platform or noone
state = player_state_idle;							//Player state at start
previousState = noone								//flag for neturning to previous state
stateAttack = attack_slash1							//state of dynamic attacks
hitByAttack = -1;									//stores a ds_list for entity id's we hit
onGround = on_ground();								//player is touching the ground
move = 0;											//move variable for determining inputs
groundAccel = 1.0;									//ground acceleration value, the higher it is the faster you start moving
groundFric = 1.9;									//ground friction value, the higher it is the faster you stop
airAccel = 0.75;									//air acceleration value, the higher it is the faster you start moving
airFric = 0.1;										//air friction value, the higher it is the faster you stop
grav = 0.3;											//gravity force
rollDistance = 100;									//rolling distance in pixels
moveDistanceRemaining = 0							//flag to calcualte rolling distance remaining
rollSpd = 5;										//how fast we roll
hSpd = 0;											//Horizontal speed
hSpdMax = 2.5;										//move max speed
vSpd = 0;											//Vertical speed
vSpdMax = 10.0;										//max gravity speed
vSpdOnImpact = 0;									//flag for determining if player hits ground from high distance
jumpForce = 7;										//jump force value
jumpCount = 0;										//counter for the amount of jumps player can do
jumpCountMax = 1;									//the maximun amount of jumps the player can do	
coyoteTime = 0;										//time in frames for player to make a jump when not on grund aka cyote time
coyoteTimeMax = 7;									//maximun time in frames for player to make a jump when not on grund aka cyote time
canDust = true;										//particle dust flag when moving
footstep = noone									//footstep SFX flag, obtained from the parent object we are steping
activateBar = noone									//flag for activating bar
inmune = 0											//frames for the player to be inmune
goThrough = false;									//flag to determine if player can go Through some platforms
actionBuffer = 0;									//action buffer to avoid 2 actions atst when 2 buttons are pressed
momentum = 0;										//variable to store the momentum when leaving a platform

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
playerBlockIdle = s_figther_block_idle;
playerBlock = s_figther_block;
playerHurt = s_figther_hurt;
playerDead = s_figther_dead;
playerDeadBlood = s_figther_dead_with_blood;
playerCrouch = s_figther_crouch;

//sfx
swordSwing1 = sfx_sword_swing_1;
swordSwing2 = sfx_sword_swing_2;
swordSwing3 = sfx_sword_swing_3;

mask_index = playerMask;			//setting players sprite mask

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

//player ingame variables
strength = 0;		//determines witch weapons/armor you can equip
vitality = 0;		//determines the amount of health of your character
dexterity = 0;		//determines how much stamina of your characte
intelligence = 0;	//determines the amount of max spell your character has and magical dmg
luck = 0			//determines drop rate chance of items

hpMax = 100;		
hp = hpMax;
maxStamina = 100;
stamina = maxStamina;

//create player hud
instance_create_layer(0, 0, "Misc", o_player_healthbar_frame);







