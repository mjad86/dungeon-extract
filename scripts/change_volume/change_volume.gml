///@desc change_volume()
function change_volume() {

	var _type = menuOption[page];
	
	switch(_type) {
		case 0:
			//Music			
			audio_group_set_gain(Music, argument0, 0);
		break;
		case 1:
			//SFX
			audio_group_set_gain(SFX, argument0, 0);	
		break;
	}//end switch

}//end script