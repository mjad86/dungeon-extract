vertex_begin(vb, vf);
var _vb = vb;

vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]);

with(o_parent_wall) {
	//calculate point of origin of each sprite and runs the quad function to determine shadow's
	quad(_vb, x, y, x+sprite_width, y+sprite_height);
	quad(_vb, x+sprite_width, y, x, y+sprite_height);
}//end with

/*
with(o_parent_enemy) {
	//calculate point of origin of each sprite and runs the quad function to determine shadow's
	var _sWhalf = sprite_width*0.5;
	var _sHhalf = sprite_height*0.5;
	if(object_get_name(object_index) == "o_barrel") {
		//barrel, point of origin to calculates corners (vertexes) for shadows is in bottom center, we set them to top left, bottom right, top right and bottom left
		quad(_vb, x-_sWhalf, y-sprite_height, x+_sWhalf, y+sprite_height);
		quad(_vb, x+_sWhalf, y-sprite_height, x-_sWhalf, y+sprite_height);
	}//end else if
}//end with
*/

vertex_end(vb);