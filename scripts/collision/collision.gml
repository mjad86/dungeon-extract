///@desc collision()
function collision() {
	
	// Vertical
	repeat(abs(vSpd)) {
	    if (!place_meeting(x, y + sign(vSpd), o_parent_wall)) {
	        y += sign(vSpd); 
		}//end if
	    else {
	        vSpd = 0;
	        break;
	    }//end else
	}//end repeat

	// Horizontal
	repeat(abs(hSpd)) {
	    // Move up slope
	    if (place_meeting(x + sign(hSpd), y, o_parent_wall) && !place_meeting(x + sign(hSpd), y - 1, o_parent_wall)) {
	        --y;
		}//end if
	    // Move down slope
	    if (!place_meeting(x + sign(hSpd), y, o_parent_wall) && !place_meeting(x + sign(hSpd), y + 1, o_parent_wall) && place_meeting(x + sign(hSpd), y + 2, o_parent_wall)) {
	        ++y; 
		}//end if
	    if (!place_meeting(x + sign(hSpd), y, o_parent_wall)) {
	        x += sign(hSpd); 
		}//end if
	    else {
	        hSpd = 0;
	        break;
	    }//end else
	}//end repeat
	
}//end script