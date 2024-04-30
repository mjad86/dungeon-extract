///@desc player_state_wall_slide()
function player_state_wall_slide(){
	
	onWall = on_wall();
	
	set_animation_sprite(playerWallSlide, 0 , 1);
	
	if(!audio_is_playing(sfx_wall_slide_01)) {
		//slide sfx
		audio_play_sound(sfx_wall_slide_01, 10, true);
	}//end if
	
	//clamp the value so it does not grow infinetly
	vSpd = clamp(vSpd, wallSlideGrav, wallSlideGravMax);
		
	if(onGround) {
		//return player to idle and reset all variables related to wall slide
		grav = 0.5;
		sprite_index = playerIdle;
		image_index = 0;
		vSpdOnImpact = 0;
		wallSlideDust = 0;
		if(audio_is_playing(sfx_wall_slide_01)) {
			//stop sfx
			audio_stop_sound(sfx_wall_slide_01);
		}//end if
		state = player_state_idle;
	}//end if
	
	if(onWall == 0) {
		//return player to falling and reset all variables related to wall slide
		grav = 0.5;
		sprite_index = playerFall;
		image_index = 0;
		vSpdOnImpact = 0;
		wallSlideDust = 0;
		if(audio_is_playing(sfx_wall_slide_01)) {
			//stop sfx
			audio_stop_sound(sfx_wall_slide_01);
		}//end if
		state = player_state_fall;
	}//end if
	
	var _side = bbox_left;
	if(onWall > 0) {
		_side = bbox_right;
	}//end if
	wallSlideDust++
	if(wallSlideDust > 4) {
		//create dust particle
		var _dust = instance_create_layer(_side, bbox_top, "Particles", o_wall_slide_dust);
		with(_dust) {
			image_xscale = o_player.image_xscale;
		}//end with
		wallSlideDust = 0;
	}//end if
	
}//end script