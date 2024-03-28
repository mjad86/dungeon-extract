if(deadScreen > 0) && (state == player_state_dead) {
	draw_sprite_ext(sprite_index,
					image_index,
					x,
					y,
					image_xscale,
					image_yscale,
					image_angle,
					c_black,
					image_alpha);
}//end if
else {
	draw_sprite_ext(sprite_index,
					image_index,
					x,
					y,
					image_xscale,
					image_yscale,
					image_angle,
					image_blend,
					image_alpha);
}//end else
				
				
//reset shader
if(shader_current() != -1) {
	shader_reset();
}//end if

//draw_sprite_ext(mask_index,0,x,y,1,1,0,c_white,1);	//drawing mask, for debug purposes