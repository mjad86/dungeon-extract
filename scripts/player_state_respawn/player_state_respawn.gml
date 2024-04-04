///@desc player_state_respawn()
function player_state_respawn() {
	var _nearestreSpawn = instance_nearest(x, y, o_respawn_zone);
	if(reSpawnX != 0) {
		x = reSpawnX;	//reset pos x
	}//end if
	else {
		//edge case if player havent come in contact with a respawn zone for x pos
		x = _nearestreSpawn.x;
	}//end else
	if(reSpawnY != 0) {
		y = reSpawnY;	//reset pos y
	}//end if
	else {
		//edge case if player havent come in contact with a respawn zone for y pos
		y = _nearestreSpawn.y;
	}//end else
	grav = 0.5;	//reset gravity
	state = player_state_idle;
	
}//end script