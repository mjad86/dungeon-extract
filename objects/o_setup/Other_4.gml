///change the intensity between 0.1 and 1 (11 being the brightest) on room starts. 

switch(room_get_name(room)) {
	case "r_swamp":
		intensity = 0.3;
	break;
	case "r_town":
		intensity = 0.4;
	break;
	case "r_dungeon":
		intensity = 0.1;
	break;
	case "r_tests_01":
		intensity = 0.1;
	break;
}//end switch










