///@desc Player state machine
if(state != player_state_lock) {
	move = (global.right - global.left);						//input calculation
	onGround = on_ground();										//verify if on ground
	vSpd += grav;												//Apply gravity force
	
	if(inmune > 0) {
		inmune = max(0, inmune - 1);							//resets inmune frames back to 0
	}//end if
	
	acceleration_and_friction(move, moveSpdMax, accel, fric);   //acceleration adn friction manager
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

if(instance_exists(o_oneway_platform) && !global.down) {
	jump_through_col(o_oneway_platform);					//controls jump through platform
}//end if
collision();												//Apply movement
	
//controls facing of the player
if(hSpd != 0) {
	image_xscale = sign(hSpd);
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
		_targetAlpha = 0.3;
	}//end if
	global.fakeTileAlpha = lerp(global.fakeTileAlpha, _targetAlpha, 0.1);
}//end if
#endregion
	
#region//OBTAING FOOTSTEP SFX
if(onGround) {
	var _floor = instance_place(x, y+1, [o_parent_wall, o_oneway_platform]);
	if(_floor != noone) {	
		footstep = _floor.footstepSFX;						//obtain the footstep sfx
	}//end if
}//end if
#endregion

out_of_camera_bounds();										//controls the out of camera action
