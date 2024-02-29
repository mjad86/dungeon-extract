///@desc draw into the graphics user interface
if(o_player.state != player_state_dead) {
	//draw healthbar background
	draw_sprite(hudBg, 0, x, y);

	//draw health bar
	var _hp = currentHp;
	var _maxHp = o_player.hpMax;

	for(var _i = 1; _i <= _hp; _i++) {
		if(_i == _maxHp) || (_i == _hp) {
			draw_sprite(hudHealthEnd, 0, x+_i, y);
		}//end if
		else {
			draw_sprite(hudHealth, 0, x+_i, y);
		}//end else
	}//end for

	if(o_player.hp < currentHp && o_player.hp > 0) {
		for(var _i = 1; _i <= _hp - o_player.hp; _i++) {
			//health yellow dmg indicator
			draw_sprite(hudHealthDmg, 0, x+o_player.hp+_i, y);
		}//end for
	}//end if
	
	//draw text
	var _msg = "[scale, 0.9]"+string(o_player.hp)+"/"+string(o_player.hpMax)+"[/scale]";
	var _c = c_white;
	var _x = x+(sprite_get_width(hudBg)*0.35);

	var _scribbleMsg = scribble(_msg);
	_scribbleMsg.starting_format("s_font", _c);
	_scribbleMsg.align(fa_left, fa_top);
	_scribbleMsg.draw(_x, y);
	//draw healthbar frame
	draw_sprite(hudFrame, 0, x, y);
}//end if