///@desc resume_game()
function resume_game() {

	surface_free(global.pauseSurface);			//destroy the pause surface created
	instance_activate_all();					//reactivate all instances again
	audio_resume_all();							//resume all audio
	if(global.gamePaused) {
		//makes sure we release the player from pause state
		global.gamePaused = !global.gamePaused;
	}//end if
	with(o_gui) {
		menuOption[page] = 0;	//reset option
		lastPage = 0;			//reset flag
		inputting = false;		//reset inputing flag
	}//end with
	//add sfx here
	audio_play_sound(sfx_gui_pause, 10, false);
}//end script