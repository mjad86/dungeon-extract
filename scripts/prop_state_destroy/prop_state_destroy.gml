///@desc prop_state_destroy()
function prop_state_destroy() {
	switch(object_get_name(object_index)) {
		case "o_barrel":
			//conditions for barrel
			if(image_index != 1) {
				image_index = 1;
				audio_play_sound_on(emitter, sfx_wood_crate_break_1, false, 10);
				repeat(8) {
					var _barrel = instance_create_layer(x, y-(sprite_get_height(s_barrel)*0.5), "Particles", o_barrel_particle);
				}//end repeat
			}//end if	
		break;
		case "o_crate_flat":
			//conditions for crate flat
			if(image_index != 1) {
				image_index = 1;
				audio_play_sound_on(emitter, sfx_wood_crate_break_1, false, 10);
				repeat(8) {
					var _crateF = instance_create_layer(x, y-(sprite_get_height(s_crate_flat)*0.5), "Particles", o_barrel_particle);
				}//end repeat
			}//end if	
		break;
		case "o_crate_large":
			//conditions for crate large
			if(image_index != 1) {
				image_index = 1;
				audio_play_sound_on(emitter, sfx_wood_crate_break_1, false, 10);
				repeat(8) {
					var _crateL = instance_create_layer(x, y-(sprite_get_height(s_crate_large)*0.5), "Particles", o_barrel_particle);
				}//end repeat
			}//end if	
		break;
		case "o_crate_small":
			//conditions for crate small
			if(image_index != 1) {
				image_index = 1;
				audio_play_sound_on(emitter, sfx_wood_crate_break_1, false, 10);
				repeat(8) {
					var _crateS = instance_create_layer(x, y-(sprite_get_height(s_crate_small)*0.5), "Particles", o_barrel_particle);
				}//end repeat
			}//end if	
		break;
	}//end switch
	if(brokenMask != -1) {
		mask_index = brokenMask;
	}//end if
}//end script