///@desc jump_through_col()
function jump_through_col() {

	with(argument0) {		
		if(other.vSpd > 0) {
			if(place_meeting(x, y-other.vSpd, other) && !place_meeting(x, y, other)) {
				if(!place_meeting(x, y-1, other)) {
					other.y += 1;
				}//end while
				other.vSpd = 0;
			}//end if		
		}//end if		
	}//end with

}//end script