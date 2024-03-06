//uniform position of the light
//display_set_gui_maximize();
u_pos = shader_get_uniform(sh_light, "u_pos");
u_z = shader_get_uniform(sh_light, "zz");
u_str = shader_get_uniform(sh_light, "u_str");
u_dir = shader_get_uniform(sh_light, "u_dir");
u_fov = shader_get_uniform(sh_light, "u_fov");
u_pos2 = shader_get_uniform(sh_shadow, "u_pos");
vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();
intensity = 0.1;	//determines the darkness of the room 1 being the most bright
vx = camera_get_view_x(global.cam);
vy = camera_get_view_y(global.cam);

shadowSurf = noone;

/*
//setup for animated background layer toa void being iluminated
var _bgLayer = layer_get_id("Background"); //name of layer to use
//var _bgLayer2 = layer_get_id("Background2"); //name of layer to use
layer_script_begin(_bgLayer, BGbegin);
layer_script_end(_bgLayer, BGend);
//layer_script_end(_bgLayer2, BGend); comment the previous and uncoment this one, and change the variable if there are many more BG
*/