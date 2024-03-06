///@desc Player state machine
if(state != player_state_lock) {
	move = (global.right - global.left);						//input calculation	
	onGround = on_ground();										//verify if on ground
	vSpd += grav;												//Apply gravity force
		
	if(inmune > 0) {
		inmune = max(0, inmune - 1);							//resets inmune frames back to 0
	}//end if
	if(actionBuffer > 0) {
		actionBuffer = max(0, actionBuffer - 1);							//resets actionBuffer frames back to 0
	}//end if
	
	if(movingPlatform) {
		var _inst = instance_place(x, y+1, o_parent_moving_platform);
		if(_inst != noone) {
			acceleration_and_friction(move, moveSpdMax, accel, fric, _inst);
		}//end if
	}//end if
	else {
		acceleration_and_friction(move, moveSpdMax, accel, fric, noone);   //acceleration adn friction manager
	}//end else
}//end if

//update listeners positions
audio_listener_position(x, y, 0);

#region//COYOTE TIME MANAGER
if(coyoteTime > 0) {
	coyoteTime = max(0, coyoteTime-1);
}//end if
		
if(onGround) {
	coyoteTime = coyoteTimeMax;
}//end if
#endregion
	
script_execute(state);										//state machine script execution

if(!goThrough) {
	jump_through_col(o_oneway_platform);					//controls jump through platform
}//end if
collision();												//Apply movement
unstuck_player();											//check to unstuck player if overlaping a wall

//controls facing of the player
if(move != 0) {
	image_xscale = sign(move);
}//end if
	
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

//out_of_camera_bounds();										//controls the out of camera action

#region//tutorial zones activation
var _zone = instance_place(x, y, [o_tutorial_zone, o_parent_lever]);
	if(_zone != noone) {
		var _inst = noone;
		if(!instance_exists(o_button_tutorial)) {
			_inst = instance_create_layer(_zone.x, y-sprite_height, "Misc", o_button_tutorial);
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