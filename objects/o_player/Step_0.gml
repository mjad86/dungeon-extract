///@desc Player state machine
if(state == player_state_idle || state == player_state_jump || 
   state == player_state_fall || state == player_state_move ||
   state == player_state_wall_slide) {
	 //NOTE: roll handles its movement in its own state
	run = 0; //add to controllers as a global.run key and set it there if you wish to apply a diference between walk and run spd
	move = (global.right - global.left);	//input calculation/Direction
	//get hSpd with variable spd's if implemented
	runType = run;
	hSpd = move * moveSpd[runType];
}//end if

unstuck_player();

#region JUMP VARIABLES RESET
	if(coyoteHangTimer > 0) {
		coyoteHangTimer--; //reset timer
	}//end if
	else {
		//Apply gravity
		vSpd += grav;
		set_on_ground(false); //not on the ground
	}//end else

	if(jumpHoldTimer > 0) {
		//jump based on the time the button is held
		vSpd = -jSpd[jumpCount-1];		//set vSpd
		jumpHoldTimer--;				//reset timer
	}//end if

	//cut of time of the jump
	if(!global.jumpRelease) {
		jumpHoldTimer = 0;
	}//end if
#endregion

collision();

//controls facing of the player
if(move != 0) {
	image_xscale = sign(move);
}//end if
	
script_execute(state);								//state machine script execution

/*
//crushed death code
if(place_meeting(x, y, o_parent_wall)) {
	crushTimer++;
	if(crushTimer > crushDeathTime) {
		instance_destroy();
	}//end if
}//end if
else {
	crushTimer = 0;
}//end else
*/

#region//SECRET DEPTH CONTROLLER
if(state != player_state_dead) {
	var _i = 0;
	var _fakeTile = 0;
	repeat(1) {
		//we repeat for each tile layer that contains Secret
		_fakeTile = tilemap_get_at_pixel(global.mapFake[_i++], x, y);
	}//end repeat
	var _targetAlpha = 1;
	if(_fakeTile > 0) {
		_targetAlpha = 0;
	}//end if
	global.fakeTileAlpha = lerp(global.fakeTileAlpha, _targetAlpha, 0.1);
}//end if
#endregion
	
#region//OBTAING FOOTSTEP SFX
if(onGround) {
	var _floor = instance_place(x, y+1, [o_parent_wall, o_oneway_platform]);
	if(_floor != noone) {	
		if(array_length(_floor.footstepSFX) > 1) {
			//choose random sfx to play if its greater than 1 sfx
			var _sfx = _floor.footstepSFX[irandom_range(0, array_length(_floor.footstepSFX)-1)];
			footstep = _sfx;
		}//end if
		else {
			footstep = _floor.footstepSFX[0];						//obtain the footstep sfx
		}//end else
	}//end if
}//end if
#endregion

#region//TUTORIAL ZONES ACTIVATION
var _zone = instance_place(x, y, [o_tutorial_zone, o_parent_lever, o_parent_npc]);
	if(_zone != noone) {
		var _inst = noone;
		if(!instance_exists(o_button_tutorial)) {
			var _height = 0;
			if(object_get_name(_zone.object_index) == "o_adventurer_npc") {
				_height = sprite_height;
			}//end if
			else {
				_height = sprite_height * 0.8;
			}//end else
			
			_inst = instance_create_layer(_zone.x, _zone.y-(_height), "Misc", o_button_tutorial);
		}//end if
		if(_inst != noone) {
			with(_inst) {
				if(array_length(_zone.tutorialSprite) > 1) {
					for (var _i = 0; _i < array_length(_zone.tutorialSprite); _i++) {
						//create an array of sprites
						buttonIndex[_i] = _zone.tutorialSprite[_i];
					}//end for
				}//end if
				else {
					buttonIndex[0] = _zone.tutorialSprite[0];
				}//end else
				image_index = 0;	//set index tos tart
				image_speed = 1;	//set speed
				show = true;		//set flag to show icon
			}//end with
		}//end if
	}//end if
	else {
		if(instance_exists(o_button_tutorial)) {
			with(o_button_tutorial) {
				show = false;
				destroy = true;
			}//end with
		}//end if
	}//end else
#endregion