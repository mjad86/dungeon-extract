///@desc when in contact with player, reset the room

if(place_meeting(x, y, o_player)) {
	//deduct a life from player here.
	room_restart();
}//end if








