if(room_get_name(room) == "r_start") {
	if(timer > 0) {
		//after time runs out, go to next room
		timer = max(0, timer - 1);
		if(alpha > 0) {
			//show msg
			alpha = max(0, alpha - 0.01);
		}//end if
	}//end if
	else {
		if(alpha < 1) {
			//show msg
			alpha = min(1, alpha + 0.01);
		}//end if
		else {
			room_goto(r_controls);
		}//end else
	}//end else
}//end if

if(room_get_name(room) == "r_controls") {
	if(timer > 0) {
		//after time runs out, go to next room
		timer = max(0, timer - 1);
		if(alpha > 0) {
			//show msg
			alpha = max(0, alpha - 0.01);
		}//end if
	}//end if
	else {
		if(alpha < 1) {
			//show msg
			alpha = min(1, alpha + 0.01);
		}//end if
		else {
			room_goto(r_dungeon);
		}//end else
	}//end else
}//end if