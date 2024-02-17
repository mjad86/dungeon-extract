///@desc player_state_move()
function player_state_move() {
		
	//sprite animation
	set_animation_sprite(playerMove, 0, 1);

	//create dust particle
	if(canDust) && (hSpd > 1 || hSpd < -1) {
		create_particle_dust(0);
	}//end if
	
	//change state to idle
	if(move == 0) {
		state = player_state_idle;						//change state
	}//end if
	
	//players on the ground and change state to jumping
	if(onGround && global.jump && coyoteTime > 0) {
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
		state = player_state_fall;						//change sat==tate
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
	
	//dodge
	if(global.dodge) {
		state = player_state_roll;				//change state to roll
		moveDistanceRemaining = rollDistance;	//set distance
	}//end if
	
	//attack
	if(global.attack) {
		state = player_state_attack;			//set player state to attack
		stateAttack = attack_slash1;			//set the attack to be done
	}//end if
	
	//block
	if(global.block) {
		//insert block script here
	}//end if
	
	//MSG("MOVING");
}//end script