///@desc setup initialize
global.textSpd = 0.75;
textProgress = 0;

//Create a "typist" which holds typewriter state and add effects here
typist = scribble_typist();
typist.in(global.textSpd, 0);
typist.character_delay_add(".", 500);
typist.character_delay_add("!", 500);
typist.character_delay_add("?", 500);
typist.character_delay_add(",", 500);
typist.function_per_char(function() {
	//control audio effect for dialogues
	var _progress = typist.get_position();
	if(typist.get_state() < 1) {
		//string sfx for dialogues
		if(floor(_progress) mod 2 < 1) {
			//play sfx here
			var _sfx = choose(sfx_typist_01, sfx_typist_02);
			audio_play_sound(_sfx, 10, false);
		}//end if
	}//end if            
});








