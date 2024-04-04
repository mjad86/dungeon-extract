var _touchSpike = place_meeting(x, y, o_player);
if(_touchSpike) {
	if(!hurtPlayer) {
		if(!ds_exists(hitByAttack, ds_type_list)) {
			hitByAttack = ds_list_create();
		}//end if
		ds_list_clear(hitByAttack);	//clear ds_list
		
		spikes_dmg_and_respawn(mask_index, dmg);	//calculate attack
		hurtPlayer = true
	}//end if
}//end if
else {
	if(hurtPlayer) {
		//reset the hurt flag
		hurtPlayer = false;
	}//end if
}//end else
