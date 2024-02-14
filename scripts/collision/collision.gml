///@desc collision()
function collision() {
	
	//Horizontal Collision
	if(place_meeting(x+hSpd, y, o_parent_wall)) {
		while(abs(hSpd) > 0.1) {
			hSpd *= 0.5;
			if(!place_meeting(x+(hSpd), y, o_parent_wall)) {
				x += hSpd;
			}//end if
		}//end while
		hSpd = 0;
	}//end if
	
	x += hSpd;
	
	//Vertical collision
	if(place_meeting(x, y+vSpd, o_parent_wall)) {
		while(abs(vSpd) > 0.1) {
			vSpd *= 0.5;
			if(!place_meeting(x, y+(vSpd), o_parent_wall)) {
				y += vSpd;
			}//end if
		}//end while
		vSpd = 0;
	}//end if
	
	y += vSpd;
	
}//end script