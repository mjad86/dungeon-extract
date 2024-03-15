///@desc platform_state_decide_movement()
function platform_state_decide_movement() {

	//set platform moving up
	image_index = 0;
	image_speed = 1;
	audio_play_sound_on(emitter, sfx_elevator_activate, false, 10);		//activate sfx
	audio_play_sound_on(emitter, sfx_elevator_moving, false, 10);		//move sfx
	delay = ROOM_SPEED * 1.2;	//setting delay
	repeat(25) {
		//creating dust particles
		var _xx = random_range(x, x+sprite_width)
		var _dust = instance_create_layer(_xx, y+25, "Misc", o_dust_gate);
		_dust.addMovement = true;
		_dust.delay = 0;
	}//end reapeat
	state = platform_state_moving;
	
}//end script