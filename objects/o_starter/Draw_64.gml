//draw rectangle and clear its alpha slowly
var _recColor = c_black;
draw_set_alpha(alpha);
draw_rectangle_color(0,0,RESOLUTION_W,RESOLUTION_H, _recColor, _recColor, _recColor,_recColor, false);
draw_set_alpha(1);




