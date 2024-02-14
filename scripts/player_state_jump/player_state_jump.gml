///@desc player_state_jump()
function player_state_jump() {
	
	//set sprite
	set_animation_sprite(playerJump, 0, 0);
	
	if(vSpd < 0 && !global.jumpHold) {
		//controls jump hight if jump button not held
		vSpd = max(vSpd, 0);
	}//end if


	//Change state to falling
	if(vSpd > 0) {
		state = player_state_fall;
	}//end if
		
	//MSG("JUMPING");
}//end script