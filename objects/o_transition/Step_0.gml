///@desc cause a room transition

if(instance_exists(o_player) && place_meeting(x, y, o_player)) {
	
	global.targetRoom = targetRoom;				//get room target
	global.targetX = targetX;					//get room targets x position to spawn
	global.targetY = targetY;					//get room targets y position to spawn
	global.targetDir = o_player.image_xscale;	//get the facing for room transition
	room_goto(targetRoom);						//do the transition
	instance_destroy();							//destroy the object to avoid multiple transitions

}//end if








