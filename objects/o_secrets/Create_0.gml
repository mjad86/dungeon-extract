///@desc set layer to variable
global.fakeTileAlpha = 1.0;
if(layer_exists(layer_get_id("Secrets"))) {
	global.layFake[0] = layer_get_id("Secrets");
	global.mapFake[0] = layer_tilemap_get_id(global.layFake[0]);
	global.uFakeTileAlpha = shader_get_uniform(sh_alpha, "alpha");
	layer_script_begin(global.layFake[0], fake_tile_alpha_set);
	layer_script_end(global.layFake[0], fake_tile_alpha_reset);
}//end if

instance_destroy();






