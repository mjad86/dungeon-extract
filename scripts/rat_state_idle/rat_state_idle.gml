///@desc rat_state_idle()
function rat_state_idle(){
	
	set_animation_sprite(ratIdle, 0, 1);
	
	decide++;		//increase decide

	var _timer = random_range(120, 300);	//in frames

	if(decide >= _timer) {
		//play sfx
		var _sfx = choose(sfx_rat_01, sfx_rat_02);
		audio_play_sound_on(emitter, _sfx, false, 10);
		state = rat_state_move;
		decide = 0;
	}//end if

}//end script