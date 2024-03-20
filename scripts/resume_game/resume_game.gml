///@desc resume_game()
function resume_game() {

	surface_free(global.pauseSurface);			//destroy the pause surface created
	instance_activate_all();					//reactivate all instances again
	audio_resume_all();							//resume all audio
	if(global.gamePaused) {
		if(input_binding_scan_in_progress()) {
			//we check if there is any binding in progress first. if there we abort the rebinding process
			input_binding_scan_abort();
	    }//end if
	    else {
			audio_play_sound(sfx_gui_pause, 10, false);		//pause sfx
			global.gamePaused = !global.gamePaused;		//change variable value to oposite
		}//end else
	}//end if
	with(o_gui) {
		menuOption[page] = 0;	//reset option
		lastPage = 0;			//reset last page flag
		page = 0;				//reset page flag
		inputting = false;		//reset inputing flag
	}//end with
}//end script