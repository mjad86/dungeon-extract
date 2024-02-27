draw_self();
var _msg = "";
var _c = c_white;
var _xoffset = 8;
var _yoffset = 15;

_msg += "[scale, 0.85]"+string(activationTime/ROOM_SPEED)+"[/scale]";

//drawing the menu content
var _scribbleMsg = scribble(_msg);
_scribbleMsg.starting_format("s_font", _c);
_scribbleMsg.align(fa_left, fa_top);
_scribbleMsg.draw(x-_xoffset,y-_yoffset);