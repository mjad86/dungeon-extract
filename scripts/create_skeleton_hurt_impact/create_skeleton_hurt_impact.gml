///@desc create_skeleton_hurt_impact()
function create_skeleton_hurt_impact() {

	var _xx = x + (irandom_range(-15, 15) * sign(o_player.image_xscale));
	var _yy = y - irandom_range(15, 40);	
	audio_play_sound_on(emitter, sfx_skeleton_hurt, false, 10); //play sfx
	var _particle = instance_create_layer(_xx, _yy, "Particles", o_hurt_impact);
	with(_particle) {
		image_xscale = o_player.image_xscale;
	}//end with

}//end script