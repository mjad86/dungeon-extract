// Inherit the parent event
event_inherited();
draw_sprite_ext(mask_index,0,x,y,1,1,0,c_white,1);	//drawing mask, for debug purposes
//draw_line_color(x, y-sightRangeY, x+sightRangeX*(sign(image_xscale)), y-sightRangeY, c_teal, c_teal);
//draw_rectangle_color(x+pointX-2, y-sightRangeY-2,x+pointX+2, y-sightRangeY+2, c_red, c_red, c_red, c_red, false);
//draw_text(x, y - sprite_height, "See you: " + string(line_of_sight()));