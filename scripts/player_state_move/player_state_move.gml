///@desc player_state_move()
function player_state_move() {
		
	//sprite animation
	set_animation_sprite(playerMove, 0, 1);

	//create dust particle
	if(canDust) && (hSpd > 1 || hSpd < -1) {
		create_particle_dust(0);
	}//end if
	
	//manual = !down - automatic = !onGround
	if(crouching) && (vSpd > 0) {
		//check if theres room to uncrouch
		mask_index = playerMask;
		//uncrouch if no solid wall
		if(!place_meeting(x, y, o_parent_wall)) {
			state = player_state_standing;	//change player state
			image_speed = -1;
			crouching = false;
		}//end if
		else {
			//cant uncrouch since there is a wall
			mask_index = playerRollMask;
			if(sprite_index != playerCrouch) {
				sprite_index = playerCrouch;
				image_index =  sprite_get_number(playerCrouch) - 1;
				image_speed = 0;
			}//end if
			state = player_state_crouch()
		}//end else
	}//end if
	
	//change state to idle
	if(move == 0) {
		state = player_state_idle;						//change state
	}//end if
		
	//players on the ground and change state to jumping
	if(global.jump && jumpCount < jumpMax && actionBuffer <= 0) {
		//change player state to jump
		actionBuffer = ACTION_BUFFER					//set the buffer to 60 frames or 1 second
		jumpCount++;									//increase jump count
		jumpHoldTimer = jumpHoldFrames[jumpCount-1];	//set jumphold timer
		set_on_ground(false);
		#region//SFX
		var _floor = instance_place(x, y+1, [o_parent_wall, o_oneway_platform]);
		if(_floor != noone) {	
			if(array_length(_floor.footstepSFX) > 1) {
				//choose random sfx to play if its greater than 1 sfx
				var _sfx = _floor.footstepSFX[irandom_range(0, array_length(_floor.footstepSFX)-1)];
				footstep = _sfx;
			}//end if
			else {
				footstep = _floor.footstepSFX[0];						//obtain the footstep sfx
			}//end else
		}//end if
		#endregion
		audio_play_sound(choose(sfx_grunt_human, sfx_grunt_human_2), 100, false);	//jumping sfx grunt
		audio_play_sound(footstep, 100, false);			//jumping sfx
		create_particle_dust(1);						//create dust aprticles
		state = player_state_jump;						//change state
	}//end if
	
	//if not touchin ground then change state to fall
	if(vSpd > 0) {
		state = player_state_fall;
	}//end if
	
	//activate things
	if(global.action && actionBuffer <= 0) {
		//1. check for entity to activate
		activate = (instance_place(x, y, o_parent_entity));
		actionBuffer = ACTION_BUFFER;					//set the value for the action buffer
		if(activate == noone || activate.entityActivateScript == -1) {
			//2. if there is nothing or there is something, but has no script. do xyz

		}//end if
		else {
			//3. otherwise there is something with a script, activate it
			script_execute_array(activate.entityActivateScript, activate.entityActivateArgs);
			if(activate.entityNpc) {
				//4. if an NPC face the player
				with(activate) {
					//face the player
					image_xscale = o_player.image_xscale * -1;
				}//end if
			}//end if
		}//end else		
	}//end if
	
	//dodge
	if(global.dodge && actionBuffer <= 0) {
		actionBuffer = ACTION_BUFFER;			//set the value for the action buffer 
		state = player_state_roll;				//change state to roll
		mask_index = playerRollMask;			//set mask;
		moveDistanceRemaining = rollDistance;	//set distance
		audio_play_sound(choose(sfx_grunt_human, sfx_grunt_human_2), 100, false);	//jumping sfx grunt
		audio_play_sound(sfx_rolling_1, 10, false); //sfx
	}//end if
	
	var _lever = instance_place(x, y, o_parent_lever);
	if(_lever != noone && global.activate && actionBuffer <= 0) {
		actionBuffer = ACTION_BUFFER;					//set the value for the action buffer
		if(_lever.state != lever_state_using && !_lever.activated) {
			activateBar = instance_create_layer(x, y - sprite_height, "Misc", o_activate_bar);
			activateBar.activationTime = _lever.activateTimer;
			activateBar.inst = _lever;
			state = player_state_interacting;
		}//end if
	}//end if
	
	//crouching
	//transition to crouch
	//manual = down - automatic = wall collision
	if(onGround) && actionBuffer <= 0 && (global.down || place_meeting(x, y, o_parent_wall)) {
		actionBuffer = ACTION_BUFFER;
		mask_index = playerRollMask;	
		crouching = true;
		state = player_state_crouching;	//change player state to crouch
	}//end if
	
	//attack
	if(global.attack && actionBuffer <= 0) {
		//sfx
		actionBuffer = ACTION_BUFFER;			//set the value for the action buffer
		audio_play_sound(choose(swordSwing1, swordSwing2, swordSwing3), 10, false);
		state = player_state_attack;			//set player state to attack
		stateAttack = attack_slash1;			//set the attack to be done
	}//end if
	
	//block
	if(global.block && actionBuffer <= 0) {
		//add sfx here
		actionBuffer = ACTION_BUFFER;			//set the value for the action buffer
		state = player_state_block_idle;		//change player state
	}//end if
	
	//MSG("MOVING");
}//end script