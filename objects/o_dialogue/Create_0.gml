///@desc setup initialize
global.textSpd = 0.75;
textProgress = 0;

//Create a "typist" which holds typewriter state and add effects here
typist = scribble_typist();
typist.in(global.textSpd, 0);
typist.character_delay_add(".", 500);
typist.function_per_char(function() {
	//control audio effect for dialogues
	var _progress = typist.get_position();
	if(typist.get_state() < 1) {
		//string sfx for dialogues
		if(round(_progress) mod 3 < 2) {
			//play sfx here
			//audio_play_sound(sfx_typist, 100, false);
		}//end if
	}//end if            
});








