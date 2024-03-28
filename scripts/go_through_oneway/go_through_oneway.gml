///@desc go_through_oneway()
function go_through_oneway() {

	//manually fall through a oneway platform
	if(global.down && global.jump) {
		//make sure we have a platform to go down through first
		if(instance_exists(myMovingPlat)) && (myMovingPlat.object_index == o_oneway_platform || object_is_ancestor(myMovingPlat.object_index, o_oneway_platform)) {
			//check if we can go semi solid
			var _vCheck = max(1, myMovingPlat.vSpd + 1);
			if(!place_meeting(x, y + _vCheck, o_parent_wall)) {
				//move below the platform
				y += 1;
			
				//inherit any downward speed from my floor platform so it doesnt catch the player
				vSpd = _vCheck-1;
			
				//forget this platform for a brief period so we dont get caught
				forgetSemiSolid = myMovingPlat;
			
				//no more floor platform
				set_on_ground(false);
			
			}//end if
		}//end if
	}//end if

}///end script