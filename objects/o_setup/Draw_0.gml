var _u_pos = u_pos;
var _u_str = u_str;
var _u_dir = u_dir;
var _u_fov = u_fov;
var _u_pos2 = u_pos2;
var _u_zz = u_z;
var _vb = vb;
var _vx = vx;
var _vy = vy;

if(!surface_exists(shadowSurf)) {
	shadowSurf = surface_create(RESOLUTION_W+32, RESOLUTION_H+32);
}//end if

matrix_set(matrix_world, matrix_build(-_vx, -_vy,0,0,0,0,1,1,1));
surface_set_target(shadowSurf);
draw_clear_alpha(c_black, 0);
draw_surface_ext(application_surface, _vx, _vy, 1, 1, 0, c_white, intensity); //control room intensity here

#region//APPLY ILUMINATION TO OBJECT LIGHT AND CHILD'S
	with(o_light) {	
		//Setting light point of origin for diferent light emitter
		var _sWhalf = sprite_width*0.5;		//xoffset
		var _sHhalf = sprite_height*0.5;	//yoffset		
		if(object_get_name(object_index) == "o_player") {
			//players origin in bottom center, so we set the light source at midle center
			shadow_and_light(_vb, _u_pos, _u_pos2, _u_zz, _u_str, _u_dir, _u_fov, 0, -_sHhalf);
		}//end if	
		if(object_get_name(object_index) == "o_torch_big" || object_get_name(object_index) == "o_torch_small") {
			//big torch origin in middle center, no offset required
			shadow_and_light(_vb, _u_pos, _u_pos2, _u_zz, _u_str, _u_dir, _u_fov, 0, 0);
		}//end if	
		if(object_get_name(object_index) == "o_lantern") {
			//lantern origin in middle center, no offset required
			shadow_and_light(_vb, _u_pos, _u_pos2, _u_zz, _u_str, _u_dir, _u_fov, 0, -_sHhalf);
		}//end if	
		if(object_get_name(object_index) == "o_cone_light") {
			//lantern origin in middle center, no offset required
			shadow_and_light(_vb, _u_pos, _u_pos2, _u_zz, _u_str, _u_dir, _u_fov, 0, -_sHhalf);
		}//end if	
		//canvas for drawing the light
		//draw_rectangle_color(_vx, _vy, _vx + RESOLUTION_W, _vy + RESOLUTION_H, color, color, color, color, 0);
		draw_surface_ext(application_surface, _vx, _vy, 1, 1, 0, color, 1);
	}//end with
#endregion

shader_reset();
//gpu_set_blendmode_ext(bm_zero, bm_src_alpha);
//draw_surface(application_surface, _vx, _vy);
surface_reset_target();
matrix_set(matrix_world, matrix_build(0,0,0,0,0,0,1,1,1));
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);	
if(global.gamePaused) {
	//this if is done to allow the use of blur shaders in pause menu
	shader_set(sh_shadowSurf)
	draw_surface(shadowSurf, _vx, _vy); //draw_surface_ext(shadowSurf,_vx, _vy, 1, 1, 0, c_white, intensity); //the intensity value controls the intensity of the light, the higher the value the darker it is; up to 1. OLD
	shader_reset();
}//end if
else {
	draw_surface(shadowSurf, _vx, _vy);
}//end else
gpu_set_blendmode(bm_normal);	