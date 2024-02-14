///@desc change_window_size()
function change_window_size() {

	switch(argument0) {
		case 0:
			//320x180
			window_set_size(320, 180);
		break;
		case 1:
			//640x360
			window_set_size(640, 360);
		break;
		case 2:
			//1080x720
			window_set_size(1080, 720);
		break;
	}//end switch	
	
	//center the window after resize
	window_center();
}//end script