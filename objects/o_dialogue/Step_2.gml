///@desc control the text on screen
textProgress += global.textSpd;

if(global.action) {
	var _msgLenght = string_length(msg);
	if(textProgress >= _msgLenght) {
		//destroy the textbox if whole text has been displayed
		instance_destroy();
		if(instance_exists(o_dialogue_queue)) {
			with(o_dialogue_queue) {
				ticket--;
			}//end with
		}//end if
		else {
			with(o_player) {
				state = previousState;
			}//end with
		}//end else
	}//end if
	else {
		if(typist.get_position() > 2) {
			//skip throught the whole msg if its still displaying
			textProgress = _msgLenght;
			typist.skip();
		}//end if
	}//end else
}//end if







