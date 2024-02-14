///@description oneway platform logic
if(round(o_player.y) > y) || (global.down) {
	//if the players y position is greater than the platforms y position or player presses key down
	mask_index = -1;
}//end if
else {
	//default mask for collition
	mask_index = s_oneway_wall;
}//end else








