///@desc set_blur_fx(_type)
///@arg _type type of blur effect 0 for radial, 1 for motion, 2 for gaussian
function set_blur_fx(_type) {

	switch(_type) {
		case 0 :
			#region//RADIAL BLUR
			shader_set(sh_radial_blur);
			var _uniform_tex_size = shader_get_uniform(sh_radial_blur, "texture_size");
			shader_set_uniform_f(_uniform_tex_size, RESOLUTION_W, RESOLUTION_H);
			draw_surface(global.pauseSurface, 0, 0)					//drawing the new surface
			#endregion
		break;
		case 1:
			#region//MOTION BLUR
			shader_set(sh_motion_blur);
			var _pos = shader_get_uniform(sh_motion_blur,"pos");
			shader_set_uniform_f(_pos,mouse_x/RESOLUTION_W,mouse_y/RESOLUTION_H);
			draw_surface(global.pauseSurface, 0, 0)					//drawing the new surface
			#endregion
		break;
		case 2:
			#region//GAUSSIAN BLUR
			shader_set(sh_gaussian_blur);
			var _size = shader_get_uniform(sh_gaussian_blur,"size");
			shader_set_uniform_f(_size,RESOLUTION_W,RESOLUTION_H,TILE_SIZE);
			draw_surface(global.pauseSurface, 0, 0)					//drawing the new surface
			#endregion
		break;
	}//end switch
	shader_reset();
}//end script