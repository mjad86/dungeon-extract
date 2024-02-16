///@desc player_state_roll()
function player_state_roll() {
	//movement
	hSpd = image_xscale * rollSpd;
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - rollSpd);	//slowly decrease the distance remaining by amount = to roll spd until it reaches 0
	//set animation sprite
	set_animation_sprite(playerRoll, 0 + min(((1-(moveDistanceRemaining/rollDistance)) * (sprite_get_number(sprite_index))),sprite_get_number(sprite_index)-1),1);
	
	if(moveDistanceRemaining <= 0) {
		//return to idle state
		state = player_state_idle;
	}//end if
	//MSG("ROLL");	
}//end script