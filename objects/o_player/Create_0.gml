///@desc Player Initialize variables
//moving
move = 0;
runType = 0;
moveSpd[0] = 2.5;
moveSpd[1] = 4;
hSpd = 0;
vSpd = 0;						
vSpdOnImpact = 0;				//flag for determining if player hits ground from high distance
crouching = false;
//jumping
grav = 0.5;
wallSlideGrav = 0.1;
gravMax = 10;
wallSlideGravMax = 5;
jumpMax = 1;
jumpCount = 0;
jumpHoldTimer = 0;
onGround = true;
onWall = 0;
//first jump
jumpHoldFrames[0] = 12;
jSpd[0] = 5;
//second jump (the lower the values the less strength)
jumpHoldFrames[1] = 10;
jSpd[1] = 4;
//coyote time
//hanged based
coyoteHangFrames = 5;
coyoteHangTimer = 0;
//frame based
coyoteJumpFrames = 5;
coyoteJumpTimer = 0;
//rolling/dodging
rollDistance = 100;									//rolling distance in pixels
moveDistanceRemaining = 0							//flag to calcualte rolling distance remaining
rollSpd[0] = 5;										//how fast we roll
//moving Platforms
myMovingPlat = noone;
earlyMovePlathSpd = false;
downSlopeSemiSolid = noone;
forgetSemiSolid = noone;
movePlathSpd = 0;
crushTimer = 0;
crushDeathTime = 3;
//states
state = player_state_idle;							//Player state at start
previousState = noone								//flag for neturning to previous state
stateAttack = attack_slash1							//state of dynamic attacks
hitByAttack = -1;									//stores a ds_list for entity id's we hit
//VFX and Misc
canDust = true;										//particle dust flag when moving
footstep = noone									//footstep SFX flag, obtained from the parent object we are steping
activateBar = noone									//flag for activating bar
inmune = 0											//frames for the player to be inmune
actionBuffer = 0;									//action buffer to avoid 2 actions atst when 2 buttons are pressed
wallSlideDust = 0;
deadScreen = 0;
//Sprites
playerIdle = s_figther_idle;
playerMove = s_figther_walk;
playerJump = s_figther_jump;
playerFall = s_figther_fall;
playerRoll = s_figther_roll;
attack1 = s_figther_attack1
attack2 = s_figther_attack2;
attack3 = s_figther_attack3;
playerBlockIdle = s_figther_block_idle;
playerBlock = s_figther_block;
playerHurt = s_figther_hurt;
playerDead = s_figther_dead;
playerDeadBlood = s_figther_dead_with_blood;
playerCrouch = s_figther_crouch;
playerWallSlide = s_figther_wall_slide;
//masks
playerMask = s_figther_mask;
playerRollMask = s_figther_roll_mask;

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




