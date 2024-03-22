///@desc player_state_fall()
function player_state_fall() {
	
	if(mask_index != playerMask) {
		mask_index = playerMask;	//set player mask
	}//end if
	
	//set sprite
	set_animation_sprite(playerFall, 0, 1);
	
	//clamp the value so it does not grow infinetly
	vSpd = clamp(vSpd, grav, gravMax);
	/*
	if(vSpd > gravMax) {
		vSpd = gravMax;
	}//end if
	*/
	vSpdOnImpact += grav;	//flag for determining if impact is from high altitude
	
	/*
	if(global.jump && coyoteTime > 0) {
		//change player state to jump
		jumpCount++;									//increase jump count
		vSpd = jumpForce;								//set jump height
		coyoteTime = 0;									//set coyoteTime to 0 to avoid double jumping
		audio_play_sound(choose(sfx_grunt_human, sfx_grunt_human_2), 100, false);	//jumping sfx grunt
		create_particle_dust(1);						//create dust particle
		state = player_state_jump;						//change state
	}//end if
	*/
	if(onGround) {
		jumpCount = 0;									//reset jump count
		create_particle_dust(1);						//create dust particle
		#region SFX
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
		audio_play_sound(footstep, 100, false);			//landing sfx
		#endregion
		if(vSpdOnImpact >= 16) {
			//if player reached max vertical velocity on hiting ground do a impact animation and sfx
			state = player_state_land;
			create_particle_dust(3);						//create dust particle
			audio_play_sound(sfx_high_landing, 10, false);
			screen_shake(5,20);
			vSpdOnImpact = 0;		
		}//end if
		else {
			//return to idel
			vSpdOnImpact = 0;								//reset flag
			state = player_state_idle;						//change state
		}//end else
	}//end if
	
	onWall = on_wall();
	var _instWall = instance_place(x+onWall, y, o_parent_wall);
	
	if(onWall != 0) && (_instWall != noone && bbox_top >= _instWall.bbox_top) {
		grav = wallSlideGrav;
		image_xscale = onWall;
		state = player_state_wall_slide;
	}//end if
	
	//MSG("FALLING");
}//end script