///@desc change_screenshake_mode()
function change_screenshake_mode() {

	switch(argument0) {
		case 0:
			global.screenShake = false;
		break
		case 1:
			global.screenShake = true;
		break;
	}//end switch

}//end script