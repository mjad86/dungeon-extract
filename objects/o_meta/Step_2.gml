///@desc Pause the game
if(room_get_name(room) != "r_start") {
	if(global.pause) {
	
		global.gamePaused = !global.gamePaused;		//change variable value to oposite
		audio_play_sound(sfx_gui_pause, 10, false);	//pause sfx
		if(global.gamePaused) {
			//audio_pause_all();							//pause all audio
		}//end if
		else {
			resume_game();
		}//end else
	}//end if
}//end if




