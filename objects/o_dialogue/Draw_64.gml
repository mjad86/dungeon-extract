///@desc Draw text box
//Draw variables
var _xBox = 64;
var _yBox;
var _playerGuiPos = world_to_gui_coordinates(o_player.x, o_player.y);
if(_playerGuiPos[1] >= 232) {
	_yBox = 32;
}//end if
else {
	_yBox = 232;
}//end else
var _boxW = 512;
var _boxH = 96;
var _xoffSet = 10;
var _yoffSet = 10;
var _wrapW = 12;
var _wrapH = 12;
var _c = c_white;

//Draw text box
draw_sprite_ext(sprite_index, image_index, _xBox, _yBox, _boxW/sprite_width, _boxH/sprite_height, 0, _c, 1);

var _width;
var _height;
//draw_msg
_width = _boxW - _wrapW;
_height = _boxH - _wrapH;
	
var _scribbleMsg = scribble(msg);
_scribbleMsg.wrap(_width, _height);
_scribbleMsg.starting_format("s_font", _c);
_scribbleMsg.draw(_xBox + _xoffSet, _yBox + _yoffSet, typist);
