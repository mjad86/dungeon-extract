///@desc player_state_idle()
function player_state_idle() {
	
	//set sprite
	set_animation_sprite(playerIdle, 0, 1);
	
	//change state to move
	if(move != 0) {
		state = player_state_move;
	}//end if
	
	//players on the ground and change state to jumping
	if(onGround && global.jump && jumpCount < jumpCountMax && coyoteTime > 0) {
		//change player state to jump
		jumpCount++;									//increase jump count
		vSpd = jumpForce;								//set jump height
		coyoteTime = 0;									//set coyoteTime to 0 to avoid double jumping
		var _floor = instance_place(x, y+1, [o_parent_wall, o_oneway_platform]);
		if(_floor != noone) {	
			footstep = _floor.footstepSFX;				//obtain the footstep sfx
		}//end if
		audio_play_sound(choose(sfx_grunt_human, sfx_grunt_human_2), 100, false);	//jumping sfx grunt
		audio_play_sound(footstep, 100, false);			//jumping sfx
		create_particle_dust(1);						//create dust aprticles
		state = player_state_jump;						//change state
	}//end if
		
	//if not touchin ground then change state to fall
	if(!onGround) {
		state = player_state_fall;
	}//end if
	
	//activate scripts on things
	if(global.action) {
		//1. check for entity to activate
		activate = (instance_place(x, y, o_parent_entity));
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
				}//end if
			}//end if
		}//end else		
	}//end if
	
	var _lever = instance_place(x, y, o_parent_lever);
	if(_lever != noone) && (global.activate) {
		if(_lever.state != lever_state_using) {
			activateBar = instance_create_layer(x, y - sprite_height, "Misc", o_activate_bar);
			activateBar.activationTime = _lever.activateTimer;
			activateBar.inst = _lever;
			state = player_state_interacting;
		}//end if
	}//end if
	
	//dodge
	if(global.dodge) {
		state = player_state_roll;				//change state to roll
		mask_index = playerRollMask;			//set mask;
		moveDistanceRemaining = rollDistance;	//set distance
		audio_play_sound(choose(sfx_grunt_human, sfx_grunt_human_2), 100, false);	//jumping sfx grunt
		audio_play_sound(sfx_rolling_1, 10, false); //sfx
	}//end if
	
	//attack
	if(global.attack) {
		//sfx
		audio_play_sound(choose(swordSwing1, swordSwing2, swordSwing3), 10, false);
		state = player_state_attack;			//set player state to attack
		stateAttack = attack_slash1;			//set the attack to be done
	}//end if
	
	//block
	if(global.block) {
		//add sfx here
		state = player_state_block_idle;
	}//end if
	
	//MSG("IDLE");	
}//end script