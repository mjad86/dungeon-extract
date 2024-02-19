onGround = place_meeting(x, y+1, o_parent_wall);
audio_emitter_position(emitter, x, y, 0); //update emitter position
//bounce
if(bounceCount != 0) {
	vSpd += grav;	//apply gravity
	if(hSpd > 0) {
		hSpd -= fric;
	}//end if
	else {
		hSpd += fric;
	}//end else
	image_angle += 5;
	if(onGround) {
		vSpd = bounceHeight * 0.6;
		bounceHeight *= 0.4;
		if(debriSfx != noone) {
			//if there is a sfx play
			audio_play_sound_on(emitter, debriSfx, false, 10);
		}//end if
		bounceCount--;
	}//end if
}//end if
else {
	vSpd += grav;	//apply gravity
	hSpd = 0;		
}//end else
	
//deteriorate
deteriorate++;
if(deteriorate > deteriorateAfter) {
	image_alpha -= 1/deteriorateTime;
	if(image_alpha <= 0) {
		instance_destroy();
	}//end if
}//endif 

//move and collide
collision();