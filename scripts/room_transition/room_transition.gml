///@desc room_transition(_type, _targetRoom)
///@arg _type
///@arg _targetRoom
function room_transition(_type, _targetRoom) {
	
	if(!instance_exists(o_screen_transition)) {
		with(instance_create_depth(0, 0, -9999, o_screen_transition)) {		
			type = _type;
			target = _targetRoom;
			if(type == TRANS_TYPE.FADE) {
				//transition sfx for fading
				if(instance_exists(o_player) && o_player.state != player_state_dead) {
					//insert sfx here
				}//end if
			}//end if
			
		}//end with
	}//end if
	else {
		MSG("Trying to transition while another is happening")
	}//end else

}//end script