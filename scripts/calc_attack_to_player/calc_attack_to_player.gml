///@desc calc_attack_to_player()
function calc_attack_to_player() {
	//use attack hitbox and check for a hit
	mask_index = argument0;
	var _dmg = argument1;
	var _hitByAttackNow = ds_list_create();
	var _hits = instance_place_list(x, y, [o_parent_entity, o_oneway_platform, o_player], _hitByAttackNow, true);
	if(_hits > 0) {
		for(var _i=0; _i < _hits; _i++) {
			//if this instance has not yet been hit by this attack, hit it
			var _hitId = _hitByAttackNow[| _i];
			if(ds_list_find_index(hitByAttack, _hitId) == -1) {
				//if the id of the instance is not in the list we add it
				ds_list_add(hitByAttack, _hitId);
				with(_hitId) {
					//action against attacked instance
					hurt_player(id,_dmg, other.id); //dmg player					
				}//end with
			}//end if
		}//end for
	}//end if
	
	ds_list_destroy(_hitByAttackNow); //avoid memory leaks
	mask_index = previousMask;	  //return players mask

}//end script