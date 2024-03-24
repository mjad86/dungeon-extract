///@desc switch behaviour

script_execute(state); //execute state maching

if(place_meeting(x, y, o_player)) {
	interact = true;
	if(highlight) {
		//increase the alpha
		if(alpha < 1.0) {
			alpha += 0.05;
		}//end if
		else {
			highlight = false;
		}//end else
	}//end if
	else {
		//decrease the alpha
		if(alpha > 0.0) {
			//reset the alpha
			alpha -= 0.05;
		}//end if
		else {
			highlight = true;
		}//end else
	}//end else
}//end if
else {
	interact = false;
	if(alpha > 0.0) {
		//reset the alpha
		alpha -= 0.05;
	}//end if
}//end else






