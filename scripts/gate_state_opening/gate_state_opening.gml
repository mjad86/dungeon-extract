///@desc gate_state_opening()
function gate_state_opening() {
	
	var _shakeDist = point_distance(o_player.x, o_player.y, x, y);
	var _shakeDistMax = 200;
	var _magnitude = 1;	//how many pixels will the camera shake
	var _duration = 30;	//how many frames will it shake for
	
	if(previousState == gate_state_closed) {
		#region//open the gate if its closed
		if(sprite_height > 32) {
			#region//vertical gate action based on a 32*64 desing
			if(y > ystart - openDist) {
				if(timer == 0) {
					//move to open upstairs
					y = approach(y,  ystart - openDist, 1);
					timerCount += 1.2;
					timer = ROOM_SPEED/timerCount;
				}//end if
			}//end if
			else {
				timerCount = 0;												//reset counter
				audio_play_sound_on(emitter, sfx_gate_stop, false, 10);		//end move sfx
				//create particles
				repeat(15) {
					var _xx = random_range(x, x+sprite_width)
					var _dust = instance_create_layer(_xx, ystart, "Misc", o_dust_gate);
					_dust.addMovement = true;
					_dust.delay = 0;
				}//end reapeat
				if(_shakeDist < _shakeDistMax) {
					//screen shake fx
					screen_shake(_magnitude, _duration);
				}//end if
				state = gate_state_open;									//change state
			}//end else
			#endregion
		}//end if
		else {
			#region//horizontal gate action based on a 64*32 desing
			if(x > xstart - openDist) {
				if(timer == 0) {
					//move to open upstairs
					x = approach(x,  xstart - openDist, 1);
					timerCount += 1.2;
					timer = ROOM_SPEED/timerCount;
				}//end if
			}//end if
			else {
				timerCount = 0;												//reset counter
				audio_play_sound_on(emitter, sfx_gate_stop, false, 10);		//end move sfx
				//create particles
				repeat(15) {
					var _yy = random_range(y, y+sprite_height)
					var _dust = instance_create_layer(xstart, _yy, "Misc", o_dust);
					_dust.addMovement = true;
					_dust.delay = 0;
				}//end reapeat
				if(_shakeDist < _shakeDistMax) {
					//screen shake fx
					screen_shake(_magnitude, _duration);
				}//end if
				state = gate_state_open;									//change state
			}//end else
			#endregion
		}//end else
		#endregion
	}//end if
	else {
		#region//close the gate if its open		
		if(sprite_height > 32) {
			#region//vertical gate action based on a 32*64 desing
			if(y < ystart) {
				if(timer == 0) {
					//move to open upstairs
					y = approach(y,  ystart, 1);
					timerCount += 1.2;
					timer = ROOM_SPEED/timerCount;
				}//end if
			}//end if
			else {
				ds_map_replace(o_meta.saveData, key, false);
				timerCount = 0;
				audio_play_sound_on(emitter, sfx_gate_stop, false, 10); //end move sfx
				//create particles
				repeat(15) {
					var _xx = random_range(x, x+sprite_width)
					var _yy = ystart + sprite_height;
					var _dust = instance_create_layer(_xx, _yy, "Misc", o_dust);
					_dust.addMovement = true;
					_dust.delay = 0;
				}//end reapeat
				if(_shakeDist < _shakeDistMax) {
					//screen shake fx
					screen_shake(_magnitude, _duration);
				}//end if
				state = gate_state_closed;
			}//end else
			#endregion
		}//end if
		else {
			#region//horizontal gate action based on a 64*32 desing
			if(x < xstart) {
				if(timer == 0) {
					//move to open upstairs
					x = approach(x,  xstart, 1);
					timerCount += 1.2;
					timer = ROOM_SPEED/timerCount;
				}//end if
			}//end if
			else {
				ds_map_replace(o_meta.saveData, key, false);
				timerCount = 0;
				audio_play_sound_on(emitter, sfx_gate_stop, false, 10); //end move sfx
				//create particles
				repeat(15) {
					var _xx = xstart + sprite_width;
					var _yy = random_range(y, y+sprite_height);
					var _dust = instance_create_layer(_xx, _yy, "Misc", o_dust);
					_dust.addMovement = true;
					_dust.delay = 0;
				}//end reapeat
				if(_shakeDist < _shakeDistMax) {
					//screen shake fx
					screen_shake(_magnitude, _duration);
				}//end if
				state = gate_state_closed;
			}//end else
			#endregion
		}//end else
		#endregion
	}//end else

}//end scrip