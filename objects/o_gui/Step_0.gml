///@desc menu controller inputs
if(!global.gamePaused) {
	exit;
}//end if

if(inputBuffer > 0) {
	inputBuffer = max(0, inputBuffer - 1); //reset inputbuffer back to 0
}//end if
var _dsGrid;
var _dsHeight;
var _input;

switch(page) {
	#region//MAIN MENU LOGIC
	case 0:
		_dsGrid = menuPage[0];
		_dsHeight = ds_grid_height(_dsGrid);
		_input = global.down - global.up;
		if(_input != 0 && inputBuffer == 0) {
			//move through the menu
			menuOption[0] += _input;
			//insert SFX here
			audio_play_sound(sfx_gui_moving, 10, false);
			inputBuffer = inputBufferMax; //set input buffer
			if(menuOption[0] > _dsHeight-1) {
				//reached bottom of menu options and loop back to top
				menuOption[0] = 0;
			}//end if
			if(menuOption[0] < 0) {
				//we hit up at first option of menu and loops to the last one
				menuOption[0] = _dsHeight-1;
			}//end if	
		}//end if
	break;
	#endregion
	#region//SUB MENUS LOGIC
	case 1:
	case 2:
		_dsGrid = menuPage[page];
		if(inputting) {
			var _hInput;
			//interact with submenu option
			switch(_dsGrid[# 1, menuOption[page]]) {
				case MENU_ELEMENT_TYPE.SHIFT:
					_hInput = global.menuRight - global.menuLeft;
					if(_hInput != 0) {
						//add SFX here if required when changing the option
						audio_play_sound(sfx_gui_moving, 10, false);
						_dsGrid[# 3, menuOption[page]] += _hInput;
						_dsGrid[# 3, menuOption[page]] = clamp(_dsGrid[# 3, menuOption[page]], 0, array_length(_dsGrid[# 4, menuOption[page]])-1);
					}//end if
				break;
				case MENU_ELEMENT_TYPE.SLIDER:
					_hInput = global.right - global.left;
					if(_hInput != 0) {
						 switch(menuOption[page]) {
							//add SFX here if required when changing the option
							case 0:
								//Music
								if(!audio_is_playing(sfx_rock_footstep)) {
									audio_play_sound(sfx_rock_footstep, 1, false);
								}//end if
							break;
							case 1:
								//SFX
								if(!audio_is_playing(sfx_gui_moving)) {
									audio_play_sound(sfx_gui_moving, 1, false);
								}//end if
							break;
						 }//end switch
						var _array = _dsGrid[# 4, menuOption[page]];
						if(_array[1] == 0.2) {
							//slower slide input for brightness
							_dsGrid[# 3, menuOption[page]] += _hInput*0.001;
						}//end if
						else {
							//regular other sliders input
							_dsGrid[# 3, menuOption[page]] += _hInput*0.01;
						}//end else
						_dsGrid[# 3, menuOption[page]] = clamp(_dsGrid[# 3, menuOption[page]], _array[0], _array[1]);
						script_execute(_dsGrid[# 2, menuOption[page]], _dsGrid[# 3, menuOption[page]]); //we execute the script to apply live volumen change
					}//end if
				break;
				case MENU_ELEMENT_TYPE.TOGGLE:
					_hInput = global.menuRight - global.menuLeft;
					_dsHeight = ds_grid_height(_dsGrid[# 3, menuOption[page]]);
					if(_hInput != 0) {
						//add SFX here if required when changing the option
						audio_play_sound(sfx_gui_moving, 10, false);
						_dsGrid[# 3, menuOption[page]] += _hInput;
						if(_dsGrid[# 3, menuOption[page]] > _dsHeight-1) {
							//reached bottom of menu options and loop back to top
							_dsGrid[# 3, menuOption[page]] = 0;
						}//end if
						if(_dsGrid[# 3, menuOption[page]] < 0) {
							//we hit up at first option of menu and loops to the last one
							_dsGrid[# 3, menuOption[page]] = _dsHeight-1;
						}//end if	
						_dsGrid[# 3, menuOption[page]] = clamp(_dsGrid[# 3, menuOption[page]], 0, 1);	
					}//end if	
				break;
				case MENU_ELEMENT_TYPE.INPUT:
				if(!input_binding_scan_in_progress()) {
					switch(menuOption[page]) {
						case 0: rebindingVerb = "left";		  break;
		                case 1: rebindingVerb = "right";	  break;
		                case 2: rebindingVerb = "down";		  break;
		                case 3: rebindingVerb = "up";		  break;
		                case 4: rebindingVerb = "attack";	  break;
		                case 5: rebindingVerb = "dodge";	  break;
		                case 6: rebindingVerb = "jump";		  break;
		                case 7: rebindingVerb = "block";	  break;
		                case 8: rebindingVerb = "action";	  break;
						//case 9: rebindingVerb = "cancel";	  break;
						case 9: rebindingVerb = "cam_left";  break;
		                case 10: rebindingVerb = "cam_right"; break;
		                case 11: rebindingVerb = "cam_down";  break;
		                case 12: rebindingVerb = "cam_up";    break;
		            }//end switch

					//Ensure we don't scan for vk_escape as that is used for the "pause" verb (which cancels rebinding)
					input_binding_scan_params_set([vk_escape, vk_enter, gp_start]);
				
				    //Start binding. We specify some code to execute when a new binding is inputted by the player
			        //We use the basic input_binding_set_safe() function here but input_binding_set() can be used too for more complex situations
			        input_binding_scan_start(function(_binding) {
			            input_binding_set_safe(rebindingVerb, _binding);
						inputting = !inputting;				//reset inputting after succesfull binding
						audio_play_sound(sfx_gui_confirm, 10, false);
			        }, function(_result) { 
						input_binding_scan_abort();
						inputting = !inputting;				//reset inputting after error or timeout
					    MSG("Failed to set binding"); 		//On failure, show negative feedback
						audio_play_sound(sfx_gui_cancel, 10, false);
					});	
				}//end if
				break;
			}//end switch
		}//end if
		else {
			_dsGrid = menuPage[page];
			_dsHeight = ds_grid_height(_dsGrid);
			_input = global.down - global.up;
			if(_input != 0 && inputBuffer == 0) {
				//move through the menu
				menuOption[page] += _input;
				//insert SFX here
				audio_play_sound(sfx_gui_moving, 10, false);
				inputBuffer = inputBufferMax; //set input buffer
				if(menuOption[page] > _dsHeight-1) {
					//reached bottom of menu options and loop back to top
					menuOption[page] = 0;
				}//end if
				if(menuOption[page] < 0) {
					//we hit up at first option of menu and loops to the last one
					menuOption[page] = _dsHeight-1;
				}//end if	
			}//end if
		}//end else
	break;
	#endregion
}//end switch

if(global.action || global.jump) {
	//interact with menu option
	switch(_dsGrid[# 1, menuOption[page]]) {
		case MENU_ELEMENT_TYPE.SCRIPT_RUNNER:
			script_execute(_dsGrid[# 2, menuOption[page]]);
		break;
		case MENU_ELEMENT_TYPE.PAGE_TRANSFER:
			//lastPage = page;						//set previous page flag	
			page = _dsGrid[# 2, menuOption[page]];	//switch page	
			if(page > 0) {
				//resets seleccion when hit back option in page transfer if not in main menu
				menuOption[page] = 0;
			}//end if
		break;
		case MENU_ELEMENT_TYPE.SHIFT:
		case MENU_ELEMENT_TYPE.SLIDER:
		case MENU_ELEMENT_TYPE.TOGGLE:
			if(inputting) {
				script_execute(_dsGrid[# 2, menuOption[page]], _dsGrid[# 3, menuOption[page]]);
			}//end if
		case MENU_ELEMENT_TYPE.INPUT:
			inputting = !inputting;
			curVal = _dsGrid[# 3, menuOption[page]]; //store the current value
		break;
	}//end switch
	//insert confirm SFX here
	if(!input_binding_scan_in_progress()) {
		audio_play_sound(sfx_gui_confirm, 10, false);
	}//end if
}//end if

if(global.dodge) {
	//cancel button logic
	if(page > 0) {
		//if not in main menu then return to last page
		if(inputting) {
			inputting = false;		//reset inputing flag
			if(curVal != _dsGrid[# 3, menuOption[page]]) {
				//if we hit cancel when inputting we revert the changes to the last valued held in memory
				_dsGrid[# 3, menuOption[page]] = curVal;	
				switch(_dsGrid[# 1, menuOption[page]]) {
					//we reverse the change if the action was cancelled by executing the script with the current value stored
					case MENU_ELEMENT_TYPE.SHIFT:
					case MENU_ELEMENT_TYPE.SLIDER:
					case MENU_ELEMENT_TYPE.TOGGLE:
						script_execute(_dsGrid[# 2, menuOption[page]], curVal);
					break;
				}//end switch
				curVal = noone;
			}//end if
		}//end if
		else {
			menuOption[page] = 0;	//reset option
			page -= 1;				//set to previous page
			//lastPage -= 1;		//deduct previous page flag
		}//end else
	}//end if
	else { 
		//exit menu if in main menu
		global.gamePaused = !global.gamePaused;
		resume_game();
	}//end else
	//insert cancel SFX here
	if(!input_binding_scan_in_progress()) {
		audio_play_sound(sfx_gui_cancel, 10, false);
	}//end if
	
}//end if







