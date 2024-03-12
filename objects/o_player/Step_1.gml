onGround = on_ground();	//verify if on ground

//update listeners positions
audio_listener_position(x, y, 0);

if(movingVPlatform != noone) {
	//Apply gravity force when in platform
	vSpd = movingVPlatform.vSpd
}//end if
else {
	//regular gravity force
	vSpd = approach(vSpd, vSpdMax, grav);	
}//end else

if(inmune > 0) {
	//resets inmune frames back to 0
	inmune = max(0, inmune - 1);						
}//end if
	
if(actionBuffer > 0) {
	//resets actionBuffer frames back to 0
	actionBuffer = max(0, actionBuffer - 1);			
}//end if