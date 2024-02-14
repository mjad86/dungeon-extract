if(activated) {
	//If the trap is activated
	timer = max(0, timer-1); //reset timer to 0
	onGround = place_meeting(x, y+1, o_parent_wall);	//verify if trap is touching ground

	switch(activateSlot) {
		case 0:
			//Falling behaviour
			if(timer <= 0) {
				//Apply gravity force
				vSpd += grav;
				if(onGround) {
					screen_shake(3, 20);
					//add sfx here
					activateSlot = noone;
				}//end if
			}//end if
		break;
	}//end switch
	
collision();	//Apply movement
	
}//end if
