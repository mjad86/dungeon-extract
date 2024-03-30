///@desc player_state_block_idle;
function player_state_block_idle(){
	
	if(!instance_exists(o_player_block)) {
		instance_create_layer(x, y, "Misc", o_player_block);
	}//end if
	
	if(sprite_index != playerBlockIdle) {
		sprite_index = playerBlockIdle;
		image_index = 0;
		image_speed = 1;
		//create block object here
	}//end if
	
	//regular speed
	hSpd = 0;
	move = (global.right - global.left);
	
	if(!global.block) {
		state = player_state_idle;
	}//end if

}//end if