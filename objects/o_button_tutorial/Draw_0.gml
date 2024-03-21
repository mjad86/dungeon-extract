if(array_length(buttonIndex) > 1) {
	/*
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
	*/
	var _c = c_white;
	var _msg = "";
	var _button0 = "";
	var _button1 = "";
	var _button2 = "";
	var _button3 = "";
	if(array_length(buttonIndex) == 2) {
		_button0 = sprite_get_name(input_verb_get_icon(buttonIndex[0])); 
		_button1 = sprite_get_name(input_verb_get_icon(buttonIndex[1])); 
		if(buttonIndex[0] == "down" && buttonIndex[1] == "jump") {
			_msg = "[alpha,"+string(image_alpha)+"]["+string(_button0)+"] And ["+string(_button1)+"][/alpha]";
		}//end if
		else {
			_msg = "[alpha,"+string(image_alpha)+"]["+string(_button0)+"] Or ["+string(_button1)+"][/alpha]";
		}//end else
		
		//drawing the icons
		var _scribbleMsg = scribble(_msg);
		_scribbleMsg.starting_format("s_font", _c);
		_scribbleMsg.align(fa_left, fa_top);
		_scribbleMsg.draw(x-16, y);
	}//end if
	if(array_length(buttonIndex) == 4) {
		_button0 = sprite_get_name(input_verb_get_icon(buttonIndex[0])); 
		_button1 = sprite_get_name(input_verb_get_icon(buttonIndex[1])); 
		_button2 = sprite_get_name(input_verb_get_icon(buttonIndex[2])); 
		_button3 = sprite_get_name(input_verb_get_icon(buttonIndex[3])); 
		_msg = "[alpha,"+string(image_alpha)+"]["+string(_button0)+"] Or ["+string(_button1)+"] Or ["+string(_button2)+"] Or ["+string(_button3)+"][/alpha]";
		
		//drawing the icons
		var _scribbleMsg = scribble(_msg);
		_scribbleMsg.starting_format("s_font", _c);
		_scribbleMsg.align(fa_left, fa_top);
		_scribbleMsg.draw(x-64, y);
	}//end if	
	
}//end if
else {
	draw_self();
}//end else