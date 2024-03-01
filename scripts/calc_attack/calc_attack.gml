///@desc calc_attack()
function calc_attack() {
	//use attack hitbox and check for a hit
	mask_index = argument0;
	var _dmg = argument1;
	var _hitByAttackNow = ds_list_create();
	var _hits = instance_place_list(x, y, [o_parent_entity, o_parent_prop], _hitByAttackNow, true);
	if(_hits > 0) {
		for(var _i=0; _i < _hits; _i++) {
			//if this instance has not yet been hit by this attack, hit it
			var _hitId = _hitByAttackNow[| _i];
			if(ds_list_find_index(hitByAttack, _hitId) == -1) {
				//if the id of the instance is not in the list we add it
				ds_list_add(hitByAttack, _hitId);
				with(_hitId) {
					//action against attacked instance
					if(object_is_ancestor(object_index, o_parent_prop)) {
						hurt_prop(id,_dmg, other.id);
					}//end if
					else if(object_is_ancestor(object_index, o_parent_enemy)) {
						//dmg enemy
						hurt_enemy(id,_dmg, other.id);
					}//end else if
					else if(object_get_name(object_index) == "o_dummy") {
						//dmg dummy
						hurt_dummy(id,_dmg, other.id);
					}//end else if
					else {
						//execute script
						if(entityHitScript != -1) {
							//if script has no arguments
							script_execute(entityHitScript);
						}//end if
					}//end else
				}//end with
			}//end if
		}//end for
	}//end if
	
	ds_list_destroy(_hitByAttackNow); //avoid memory leaks
	mask_index = s_figther_mask;	  //return players mask

}//end script