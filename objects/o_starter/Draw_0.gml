//drawing the msg's content
var _c = c_white;
var _xx = 180;
var _yy = 200;
var _msg = "Controller is recommended for this game experience, but keyboard will work too.";

if(room_get_name(room) == "r_start") {
	var _scribbleMsg = scribble(_msg);
	_scribbleMsg.starting_format("s_font", _c);
	_scribbleMsg.align(fa_left, fa_top);
	_scribbleMsg.draw(_xx, _yy);
}//end if
