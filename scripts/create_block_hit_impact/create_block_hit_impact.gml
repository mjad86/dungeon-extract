///@desc create_block_hit_impact()
function create_block_hit_impact() {
	
	var _xx = x + (irandom_range(0, 9) * sign(o_player.image_xscale));
	var _yy = y + irandom_range(1, 29);	
	var _sfx = choose(sfx_shield_block_01, sfx_shield_block_02, sfx_shield_block_03, sfx_shield_block_04);
	audio_play_sound_on(emitter, _sfx, false, 10);
	var _particle = instance_create_layer(_xx, _yy, "Particles", o_hit_impact);
	with(_particle) {
		image_xscale = o_player.image_xscale;
	}//end with
	
}//end script