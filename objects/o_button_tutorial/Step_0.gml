if(show) {
	if(image_alpha < 1) {
		image_alpha += 0.05;
	}//end if
}//end if
else {
	if(image_alpha > 0) {
		image_alpha -= 0.05;
	}//end if	
	if(image_alpha <= 0 && destroy) {
		instance_destroy();
	}//end if 
}//end else

if(array_length(buttonIndex) > 1) {
	switch(global.controller) {
		case CONTROLLER.MOUSE_KEYBOARD:
			sprite_index = buttonIndex[0];
		break;
		case CONTROLLER.PS:
			sprite_index = buttonIndex[1];
		break;
		case CONTROLLER.XBOX:
			sprite_index = buttonIndex[2];
		break;
	}//end switch
}//end if
else {
	sprite_index = input_verb_get_icon(buttonIndex[0]);
}//end else

depth = -9999; //ensures the icon is in front of everything except the GUI