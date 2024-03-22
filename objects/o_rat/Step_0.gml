// Inherit the parent event
event_inherited();

run = 0; //add to controllers as a global.run key and set it there if you wish to apply a diference between walk and run spd

if(state == rat_state_idle) {
	move = 0;
}//end if
else {
	if(move == 0) {
		move = choose(-1, 1);
	}//end if
}//end else

//get hSpd with variable spd's if implemented
runType = run;

hSpd = move * moveSpd[runType];	//horizontal movement

vSpd += grav;	//apply gravity

collision();	//col and movement

if(move != 0) {
	//facing
	image_xscale = sign(move);
}//end if

script_execute(state);	//state machine

