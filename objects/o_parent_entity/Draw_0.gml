if(entityShadow) {
	draw_sprite_ext(shadow, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
}//end if
if(flash != 0) {
	shader_set(sh_white_flash);
	shader_set_uniform_f(uFlash, flash);
}//end if

draw_self();

if(shader_current() != -1) {
	shader_reset();
}//end if
