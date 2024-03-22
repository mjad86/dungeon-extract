///@desc on_wall()
function on_wall() {

	var _onWall = 0;
	
	_onWall = place_meeting(x+1, y, o_parent_wall) - place_meeting(x-1, y, o_parent_wall);
	
	return _onWall;

}//end script