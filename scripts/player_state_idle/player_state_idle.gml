///@desc player_state_idle()
function player_state_idle() {
	
	//set sprite
	set_animation_sprite(playerIdle, 0, 0);
	
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
		audio_play_sound(sfx_player_jump, 100, false);  //jumping sfx
		create_particle_dust(1);						//create dust aprticles
		state = player_state_jump;						//change state
	}//end if
		
	//if not touchin ground then change state to fall
	if(!onGround) {
		state = player_state_fall;
	}//end if
	
	//change state to crouch
	if(global.down) {
		state = player_state_crouch;
		mask_index = playerMaskCrouch;
	}//end if
	
	//activate things
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
	
	//MSG("IDLE");	
}//end script