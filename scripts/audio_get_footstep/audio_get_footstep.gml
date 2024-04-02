///@desc audio_get_footstep
function audio_get_footstep() {
	
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

}//end script