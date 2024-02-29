// Inherit the parent event
event_inherited();

if(hp < maxHp) {	
	var _healthWidth = 40; //40 pixels is the maximun width of enemies healthbars
	var _displayHp = round((hp/maxHp)*_healthWidth);
	var _y = y - sprite_get_height(sprite_index);
	var _x = x - (sprite_get_width(sprite_index)*0.5);
	
	//draw bg
	draw_sprite(s_enemy_healthbar_bg, 0, _x, _y);
	
	//draw health
	for(var _i = 1; _i <= _displayHp; _i++) {
		draw_sprite(s_enemy_healthbar, 0, _x+_i, _y);
	}//end for	
	
	//draw healthbar frame	
	draw_sprite(s_enemy_healthbar_frame, 0, _x, _y);
}//end if

