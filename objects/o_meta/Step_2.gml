///@desc Pause the game
if(room_get_name(room) != "r_start") {
	if(global.pause) {
		if(input_binding_scan_in_progress()) {
			//we check if there is any binding in progress first. if there we abort the rebinding process
	        input_binding_scan_abort();
	    }//end if
	    else {
			audio_play_sound(sfx_gui_pause, 10, false);		//pause sfx
			global.gamePaused = !global.gamePaused;		//change variable value to oposite
		}//end else
		if(global.gamePaused) {
			//audio_pause_all();						//pause all audio
		}//end if
		else {
			resume_game();
		}//end else
	}//end if
}//end if




