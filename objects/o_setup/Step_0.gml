vertex_begin(vb, vf);
var _vb = vb;

vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]);

with(o_wall) {
	//calculate point of origin of each sprite and runs the quad function to determine shadow's
	quad(_vb, x, y, x+sprite_width, y+sprite_height);
	quad(_vb, x+sprite_width, y, x, y+sprite_height);
}//end with

with(o_slope) {
	//calculate point of origin of each sprite and runs the quad function to determine shadow's
	quad(_vb, x, y, x+sprite_width, y+sprite_height);
	quad(_vb, x, y+sprite_height,midX, midY);
}//end with

vertex_end(vb);