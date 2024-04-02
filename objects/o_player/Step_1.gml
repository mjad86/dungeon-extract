//update listeners positions
audio_listener_position(x, y, 0);	//update listener position
	
inmune = inmune > 0 ? max(0, inmune - 1) : 0;					 //resets inmune frames back to 0
actionBuffer = actionBuffer > 0 ? max(0, actionBuffer - 1) : 0;  //resets actionBuffer frames back to 0
deadScreen = deadScreen > 0 ? max(0, deadScreen - 1) : 0;		 //resets deadScreen frames back to 0

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