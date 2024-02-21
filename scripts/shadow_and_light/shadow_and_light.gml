///@desc shadow_and_light(_vb, _u_pos, _u_pos2, _u_zz, _u_str, _u_dir, _u_fov, xOffset, yOffset)
function shadow_and_light(_vb, _u_pos, _u_pos2, _u_zz, _u_str, _u_dir, _u_fov, _xOffset, _yOffset){

	//shadow draw
	gpu_set_blendmode_ext_sepalpha(bm_zero, bm_one, bm_one, bm_one);
	shader_set(sh_shadow);
	shader_set_uniform_f(_u_pos2, x + _xOffset, y + _yOffset);
	vertex_submit(_vb, pr_trianglelist, -1); 
	
	//light draw
	gpu_set_blendmode_ext_sepalpha(bm_inv_dest_alpha, bm_one, bm_zero, bm_zero);
	shader_set(sh_light);
	shader_set_uniform_f(_u_pos,x + _xOffset, y + _yOffset);
	shader_set_uniform_f(_u_zz, size);
	shader_set_uniform_f(_u_str, str);
	shader_set_uniform_f(_u_dir, dir);
	shader_set_uniform_f(_u_fov, fov);

}//end script