if(hp < maxHp) {	
	var _healthWidth = 40; //40 pixels is the maximun width of enemies healthbars
	var _displayHp = round((hp/maxHp)*_healthWidth);
	var _y = ownerId.y - healthBarHeight;
	var _x = ownerId.x - healthBarXPos;
	
	//draw bg
	draw_sprite_ext(s_enemy_healthbar_bg, 0, _x, _y, image_xscale, image_yscale, 0, c_white, alpha);
	
	var _hp = currentHp;
	
	for(var _i = 1; _i <= _displayHp; _i++) {
		//draw health
		draw_sprite_ext(s_enemy_healthbar, 0, _x+_i, _y, image_xscale, image_yscale, 0, c_white, alpha);
	}//end for

	if(hp < currentHp && hp > 0) {
		for(var _i = 1; _i <= round((currentHp/maxHp)*_healthWidth) - _displayHp; _i++) {
			//health yellow dmg indicator
			draw_sprite_ext(s_enemy_healthbar_dmg, 0, _x+_displayHp+_i, _y, image_xscale, image_yscale, 0, c_white, alpha);
		}//end for
	}//end if
	
	//draw healthbar frame	
	draw_sprite_ext(s_enemy_healthbar_frame, 0, _x, _y, image_xscale, image_yscale, 0, c_white, alpha);
}//end if