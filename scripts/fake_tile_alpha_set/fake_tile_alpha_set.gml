///@desc fake_tile_alpha_set()
function fake_tile_alpha_set() {

	if(event_number == 0) {
		shader_set(sh_alpha);
		shader_set_uniform_f(global.uFakeTileAlpha, global.fakeTileAlpha);
	}//end if

}//end script