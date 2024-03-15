//update listeners positions
audio_listener_position(x, y, 0);

if(inmune > 0) {
	//resets inmune frames back to 0
	inmune = max(0, inmune - 1);						
}//end if
	
if(actionBuffer > 0) {
	//resets actionBuffer frames back to 0
	actionBuffer = max(0, actionBuffer - 1);			
}//end if

//reset jumping variables
if(onGround) {
	jumpCount = 0;
	jumpHoldTimer = 0;
	coyoteJumpTimer = coyoteJumpFrames;
}//end if
else {
	coyoteJumpTimer--;
	if(jumpCount == 0 && coyoteJumpTimer <= 0) {
		//set jumpcount to 1 when we fall of a ledge
		jumpCount = 1;
	}//end if
}//end else