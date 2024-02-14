///@desc Draw text box
//Draw variables
var _xBox = RESOLUTION_W - 255;
var _yBox = RESOLUTION_H - 60;
var _boxW = 200;
var _boxH = 50;
var _xoffSet = 10;
var _yoffSet = 10;
var _c = c_white;

//Draw text box
draw_sprite_ext(sprite_index, image_index, _xBox, _yBox, _boxW/sprite_width, _boxH/sprite_height, 0, _c, 1);

var _width;
var _height;
//draw_msg
_width = _boxW - (_xoffSet*1.5);
_height = _boxH - 15;
	
var _scribbleMsg = scribble(msg);
_scribbleMsg.wrap(_width, _height);
_scribbleMsg.starting_format("s_font", _c);
_scribbleMsg.draw(_xBox + _xoffSet, _yBox + _yoffSet, typist);
