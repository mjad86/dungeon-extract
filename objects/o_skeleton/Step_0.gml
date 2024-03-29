event_inherited();

run = 0; //add to controllers as a global.run key and set it there if you wish to apply a diference between walk and run spd

if(state == skeleton_state_idle || state == skeleton_state_sleep) {
	move = 0;
}//end if
else {
	if(move == 0) {
		move = choose(-1, 1);
	}//end if
}//end else

//get hSpd with variable spd's if dimplemented
runType = run;

hSpd = move * moveSpd[runType];	//horizontal movement

vSpd += grav;												//Apply gravity force
var _los = line_of_sight();									//line of sight
script_execute(state);										//state machine script execution
	
collision();												//Apply movement

if(move != 0) {
	//facing
	image_xscale = sign(move);
}//end if