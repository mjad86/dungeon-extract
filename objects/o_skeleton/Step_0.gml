event_inherited();

run = 0; //add to controllers as a global.run key and set it there if you wish to apply a diference between walk and run spd

//move = (state == skeleton_state_idle || state == skeleton_state_sleep) ? 0 : choose(-1, 1);

runType = run;							//get hSpd with variable spd's if dimplemented

afraid_of_heights()						//dont walk off edges

hSpd = move * moveSpd[runType];			//horizontal movement

vSpd += grav;							//Apply gravity force

los = line_of_sight();					//line of sight
collision();							//Apply movement
blocked = enemy_detect_block();			//detect if player is blocking

if(move != 0) {
	//facing
	image_xscale = sign(move);
}//end if

script_execute(state);					//state machine script execution