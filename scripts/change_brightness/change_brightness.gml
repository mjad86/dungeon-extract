///@desc change_brightness()
function change_brightness() {
	//brightness
	var _amount = argument0;
	with(o_setup) {
		intensity += _amount;
	}//end with
}//end script