///@desc player_enter_room(dirX, dirY)
function player_enter_room(){
	
	//MSG("hSpeed: " + string(hSpeed));
	//MSG("vSpeed: " + string(vSpeed));
	
	//Update image index
	set_animation_sprite(s_figther_idle, 0, 1);
	
	global.playerHasControl = false;
	
	if(!timeline_running) {
		timeline_index = tl_enter_room;
		timeline_position = 0;
		timeline_running = true;
	}//end if
}