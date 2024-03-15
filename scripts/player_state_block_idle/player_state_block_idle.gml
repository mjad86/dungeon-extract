///@desc player_state_block_idle;
function player_state_block_idle(){
	
	if(sprite_index != playerBlockIdle) {
		sprite_index = playerBlockIdle;
		image_index = 0;
		image_speed = 1;
		//create block object here
	}//end if
	
	//regular speed
	hSpd = 0;
	
	if(!global.block) {
		state = player_state_idle;
	}//end if

}//end if