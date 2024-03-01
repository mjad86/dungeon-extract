///@desc cause a room transition

if(instance_exists(o_player) && place_meeting(x, y, o_player)) {
	
	if(!instance_exists(o_screen_transition)) {
		global.targetRoom = targetRoom;				//get room target
		global.targetX = targetX;					//get room targets x position to spawn
		global.targetY = targetY;					//get room targets y position to spawn
		global.targetDir = o_player.image_xscale;	//get the facing for room transition
		with(o_player){
			state = player_state_lock;	//lock the player whiles transitionning
		}//end with
		room_transition(TRANS_TYPE.FADE, global.targetRoom);
		instance_destroy();
	}//end if

}//end if








