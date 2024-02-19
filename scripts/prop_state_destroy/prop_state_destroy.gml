///@desc prop_state_destroy()
function prop_state_destroy() {
	if(object_get_name(object_index) == "o_barrel") {
		//conditions for barrel
		if(image_index != 1) {
			image_index = 1;
			audio_play_sound_on(emitter, sfx_wood_crate_break_1, false, 10);
			repeat(8) {
				var _barrel = instance_create_layer(x, y-(sprite_get_height(s_barrel)*0.5), "Particles", o_barrel_particle);
			}//end repeat
		}//end if		
	}//end if
}//end script