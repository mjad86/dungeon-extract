///@desc create_hit_impact()
function create_hit_impact() {
	
	var _xx = o_player.x + (irandom_range(35, 45) * sign(o_player.image_xscale));
	var _yy = o_player.y - irandom_range(20, 35);	
	
	instance_create_layer(_xx, _yy, "Particles", o_hit_impact);

}//end script