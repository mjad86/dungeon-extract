///@desc resume_game()
function resume_game() {

	surface_free(global.pauseSurface);			//destroy the pause surface created
	instance_activate_all();					//reactivate all instances again
	audio_resume_all();							//resume all audio

}//end script