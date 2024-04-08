///@desc create_hurt_impact()
function create_hurt_impact() {
	
	var _xx = o_player.x + (irandom_range(35, 45) * sign(o_player.image_xscale));
	var _yy = o_player.y - irandom_range(20, 35);	
	
	var _particle = instance_create_layer(_xx, _yy, "Particles", o_hurt_impact);
	with(_particle) {
		image_xscale = o_player.image_xscale;
	}//end with

}//end script