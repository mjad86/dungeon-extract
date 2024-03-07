// Draw shadow
/*
if (platform != noone) {
  draw_sprite_ext(s_figther_shadow, 0, x, platform.bbox_top, image_xscale, image_yscale, 0, c_white, image_alpha);
}//end if
*/

if(o_player.onGround) {
	draw_sprite_ext(s_figther_shadow, 0, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
}//end if