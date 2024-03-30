if(hp < currentHp) {
	currentHp--;
	displayTimer = displayTimerMax; //when struck we reset the timer
}//end if
else {
	currentHp = hp;
}//end else

if(displayTimer > 0) {
	displayTimer = max(0, displayTimer-1); //reset timer for displaying health
	if(alpha < 1) {
		alpha += 0.1;	//increase alfa
	}//end if
}//end if
else {
	if(alpha > 0) {
		alpha = max(0, alpha-0.1);	//deduct alpha
	}//end if
}//end else
