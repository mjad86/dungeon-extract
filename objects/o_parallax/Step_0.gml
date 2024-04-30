var _near = layer_get_id("Background_4");
var _mid1 = layer_get_id("Background_3");
var _mid2 = layer_get_id("Background_2");
var _mid3 = layer_get_id("Background_1");
var _far = layer_get_id("Background");

layer_x(_near, lerp(0, camera_get_view_x(global.cam), 0.1));	//nearest to camera
layer_x(_mid1, lerp(0, camera_get_view_x(global.cam), 0.3));
layer_x(_mid1, lerp(0, camera_get_view_x(global.cam), 0.5));
layer_x(_mid1, lerp(0, camera_get_view_x(global.cam), 0.7));
layer_x(_far, lerp(0, camera_get_view_x(global.cam), 0.9));		//furthest to camera
