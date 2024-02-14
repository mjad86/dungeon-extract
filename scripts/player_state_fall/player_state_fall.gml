///@desc player_state_fall()
function player_state_fall() {

	//set sprite
	set_animation_sprite(playerFall, 0, 1);
	
	//clamp the value so it does not grow infinetly
	vSpd = clamp(vSpd, jumpForce, -jumpForce);
	
	if(global.jump && coyoteTime > 0) {
		//change player state to jump
		jumpCount++;									//increase jump count
		vSpd = jumpForce;								//set jump height
		coyoteTime = 0;									//set coyoteTime to 0 to avoid double jumping
		audio_play_sound(sfx_player_jump, 100, false);  //jumping sfx
		create_particle_dust(1);						//create dust particle
		state = player_state_jump;						//change state
	}//end if
	
	if(onGround) {
		jumpCount = 0;									//reset jump count
		create_particle_dust(1);						//create dust particle
		audio_play_sound(sfx_rock_footstep, 100, false);//landing sfx
		state = player_state_idle;						//change state
	}//end if
			
	//MSG("FALLING");
}//end script