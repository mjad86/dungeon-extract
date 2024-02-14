///@desc Pause the game
if(global.pause) {
	
	global.gamePaused = !global.gamePaused;

	if(global.gamePaused) {
		//audio_pause_all();							//pause all audio
	}//end if
	else {
		resume_game();
	}//end else

}//end if




