///@desc player_state_interacting()
function player_state_interacting() {

	if(movingHPlatform != noone) {
		//when in moving platform
		hSpd = 0 + movingHPlatform.hSpd;
	}//end if
	else {
		//regular movement
		hSpd = 0;
	}//end else

	set_animation_sprite(playerIdle, 0, 1);

}//end script