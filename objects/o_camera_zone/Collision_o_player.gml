//on col with player in active room

if(global.camMoving) || (!global.playerHasControl) {
	exit;
}//end if

if(global.activeRoom == -1) {
	global.activeRoom = id;
	camera_set_view_pos(global.cam, x, y);
}//end if
else if(global.activeRoom != id) && (o_player.state != player_enter_room){
	global.activeRoom = id;
	global.camMoving = true;
	//if need it, set player position here
	//o_player.x = clamp(o_player.x, x, x + sprite_width);
	//o_player.y = clamp(o_player.y, y, y + sprite_height);
}//end else if