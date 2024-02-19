//uniform position of the light
//display_set_gui_maximize();
u_pos = shader_get_uniform(sh_light, "u_pos");
u_z = shader_get_uniform(sh_light, "zz");
u_pos2 = shader_get_uniform(sh_shadow, "u_pos");
vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();
intensity = 0.9;	//determines the darkness of the room 1 being the most dark
vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]);

shadowSurf = noone;

//allows the object to be a top of everything
depth = -9999;