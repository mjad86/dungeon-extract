///@desc Version only for developement

var _c = c_white;
var _xx = 0;
var _yy = RESOLUTION_H - 10;
var _msg = "Alpha test version 0.1.0";

var _scribbleMsg = scribble(_msg);
_scribbleMsg.starting_format("s_font", _c);
_scribbleMsg.align(fa_left, fa_top);
_scribbleMsg.blend(_c, 0.5);
_scribbleMsg.draw(_xx, _yy);
_scribbleMsg.blend(_c, 1);
