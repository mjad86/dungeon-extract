if(!global.gamePaused) {
	exit;
}//end if

//positioning and grid variables
var _dsGridmain = menuPage[0];
var _dsHeightMain = ds_grid_height(_dsGridmain);
var _c = c_white;
var _xx = 16;
var _yy = 16;
var _msg = "";

//draw background rectangle with 50% alpha
draw_set_color(c_black);
draw_set_alpha(0.5)
draw_rectangle(8,0,65,RESOLUTION_H,false);
draw_set_alpha(1);


#region//DRAWING MAIN MENU
//looping and adding space between diferent options of the menu
for(var _i = 0; _i < _dsHeightMain; _i++) {
	_msg += "\n";												//add space into display options
	if(page == 0) {
		if(_i == menuOption[0]) {
			_msg += "[blink]"+_dsGridmain[# 0,  _i]+"[/blink]";	//add effect to the selected option
		}//end if
		else {
			_msg += _dsGridmain[# 0, _i];							//add menu option to drawing array
		}//end else
	}//end if
	else {
		if(_i == menuOption[0]) {
			_msg += _dsGridmain[# 0,  _i];	//add effect to the selected option
		}//end if
		else {
			_msg += "[alpha, 0.2]"+_dsGridmain[# 0,  _i]+"[/alpha, 0.2]";							//add menu option to drawing array
		}//end else
	}//end else
}//end for

//drawing the menu content
var _scribbleMsg = scribble(_msg);
_scribbleMsg.starting_format("s_font", _c);
_scribbleMsg.align(fa_left, fa_top);
_scribbleMsg.draw(_xx, _yy);
#endregion

#region//DRAWING SUB MENU
if(page > 0) {
	var _dsGridsub = menuPage[page];
	var _dsHeight = ds_grid_height(_dsGridsub);
	var _subMsg = "";
	var _subMsgRight = "";
	
	//looping and adding space between diferent options of the submenu
	 for(var _i = 0; _i < _dsHeight; _i++) {
		_subMsg += "\n\n";	//add space into display options
		if(!inputting) {
			if(_i == menuOption[page]) {
				_subMsg += "[blink]"+_dsGridsub[# 0,  _i]+"[/blink]";	//add effect to the selected option
			}//end if
			else {
				_subMsg += _dsGridsub[# 0, _i];	//add menu option to drawing array
			}//end else
		}//end if
		else {
			if(_i == menuOption[page]) {
				_subMsg += _dsGridsub[# 0,  _i];	//add effect to the selected option
			}//end if
			else {
				_subMsg += "[alpha, 0.2]"+_dsGridsub[# 0, _i]+"[/alpha, 0.2]";	//add menu option to drawing array
			}//end else
		}//end else
		
		_subMsgRight += "\n\n";	//add space into display options
		var _curVal;
		var _curArray;
		//setting up options for the right side
		switch(_dsGridsub[# 1, _i]) {
			//Drawing logic for each type of option
			#region//TYPE SHIFT
			case MENU_ELEMENT_TYPE.SHIFT:
				_curVal = _dsGridsub[# 3, _i];
				_curArray = _dsGridsub[# 4, _i];
				if(inputting) {
					if(_i == menuOption[page]) {
						if(_curVal == 0) {
							_subMsgRight += _curArray[_curVal]+"[scale,0.7][s_btn_right][/scale,0.7]";	//if im all the way to the left eliminate indicator
						}//end if
						else if(_curVal == array_length(_dsGridsub[# 4, _i]) - 1) {
							_subMsgRight += "[scale,0.7][s_btn_left][/scale,0.7]"+_curArray[_curVal];	//if im all the way to the right eliminate indicator
						}//end if
						else {
							_subMsgRight += "[scale,0.7][s_btn_left][/scale,0.7]"+_curArray[_curVal]+"[scale,0.7][s_btn_right][/scale,0.7]";	//assign the both texts
						}//end else
					}//end if
					else {
						if(_curVal == 0) {
							_subMsgRight += "[alpha, 0.2]"+_curArray[_curVal]+"[scale,0.7][s_btn_right][/scale,0.7][/alpha, 0.2]";	//if im all the way to the left eliminate indicator
						}//end if
						else if(_curVal == array_length(_dsGridsub[# 4, _i]) - 1) {
							_subMsgRight += "[alpha, 0.2][scale,0.7][s_btn_left][/scale,0.7]"+_curArray[_curVal]+"[/alpha, 0.2]";	//if im all the way to the right eliminate indicator
						}//end if
						else {
							_subMsgRight += "[alpha, 0.2][scale,0.7][s_btn_left][/scale,0.7]"+_curArray[_curVal]+"[scale,0.7][s_btn_right][/scale,0.7][/alpha, 0.2]";	//assign the both texts
						}//end else
					}//end else
				}//end if
				else {
					if(_curVal == 0) {
						_subMsgRight += _curArray[_curVal]+"[scale,0.7][s_btn_right][/scale,0.7]";	//if im all the way to the left eliminate indicator
					}//end if
					else if(_curVal == array_length(_dsGridsub[# 4, _i]) - 1) {
						_subMsgRight += "[scale,0.7][s_btn_left][/scale,0.7]"+_curArray[_curVal];	//if im all the way to the right eliminate indicator
					}//end if
					else {
						_subMsgRight += "[scale,0.7][s_btn_left][/scale,0.7]"+_curArray[_curVal]+"[scale,0.7][s_btn_right][/scale,0.7]";	//assign the both texts
					}//end else
				}//end else
			break;
			#endregion
			#region//TYPE SLIDER
			case MENU_ELEMENT_TYPE.SLIDER:
				draw_set_color(c_white);
				_curVal = _dsGridsub[# 3, _i];
				_curArray = _dsGridsub[# 4, _i];
				var _percent = ((_curVal - _curArray[0]) / (_curArray[1] - _curArray[0]));						//calculate percentage value to show on screen
				var _index = _curVal*(sprite_get_number(s_sound_bar)-1);											//calculate img index correct position percentage wise

				if(inputting) {
					if(_i == menuOption[page]) {
						_subMsgRight += "[s_sound_bar,"+string(_index)+"] "+string(floor(_percent*100))+"%";	//assign the text								//assign the text
					}//end if
					else {
						_subMsgRight += "[alpha, 0.2][s_sound_bar,"+string(_index)+"] "+string(floor(_percent*100))+"%[/alpha, 0.2]";	//assign the text
					}//end else
				}//end if
				else {
					_subMsgRight += "[s_sound_bar,"+string(_index)+"] "+string(floor(_percent*100))+"%";		//assign the text
				}//end else
				
			break;
			#endregion
			#region//TYPE TOGGLE
			case MENU_ELEMENT_TYPE.TOGGLE:
				_curVal = _dsGridsub[# 3, _i];
				var _img; //refers to sprite img index
				_img = _curVal; //is either 0 (off) or 1 (on)
				
				if(inputting) {
					if(_i == menuOption[page]) {
						_subMsgRight += "[s_check_box,"+string(_img)+"]";							//assign the text
					}//end if
					else {
						_subMsgRight += "[alpha, 0.2][s_check_box,"+string(_img)+"][/alpha, 0.2]";	//assign the text
					}//end else
				}//end if
				else {
					_subMsgRight += "[s_check_box,"+string(_img)+"]";								//assign the text
				}//end else
			break;
			#endregion
			#region//TYPE INPUT
			case MENU_ELEMENT_TYPE.INPUT:
				_curVal = _dsGridsub[# 2, _i];
				var _button;
				//_button = input_verb_get_icon(_curVal); 
				_button = sprite_get_name(input_verb_get_icon(_curVal)); 
				//var _iconX = 175;
				//var _iconY = 42 + (19 * _i);
				
				//we draw them by hand since icons are to big to arrange in menu
				//draw_sprite(_button, 0, _iconX, _iconY);
				
				_subMsgRight += "["+string(_button)+"]";

			break;
			#endregion
		}//end if
	}//end for

	//drawing the submenu content
	var _scribbleSubMsg = scribble(_subMsg);
	_scribbleSubMsg.starting_format("s_font", _c);
	_scribbleSubMsg.align(fa_left, fa_top);
	_scribbleSubMsg.draw(_xx*6, _yy);
	
	//drawing the submenu content right side values
	var _scribbleSubMsgRight = scribble(_subMsgRight);
	_scribbleSubMsgRight.starting_format("s_font", _c);
	_scribbleSubMsgRight.align(fa_left, fa_top);
	_scribbleSubMsgRight.draw(_xx*12, _yy);
}//end if
#endregion


