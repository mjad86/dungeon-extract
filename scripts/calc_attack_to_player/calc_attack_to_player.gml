///@desc calc_attack_to_player()
function calc_attack_to_player() {
	//use attack hitbox and check for a hit
	mask_index = argument0;
	var _dmg = argument1;
	var _hitByAttackNow = ds_list_create();
	var _hits = !blocked ? instance_place_list(x, y, o_player, _hitByAttackNow, true) : instance_place_list(x, y, o_player_block, _hitByAttackNow, true);
	//if we are not colliding with a player blocking object

	if(_hits > 0) {
		for(var _i=0; _i < _hits; _i++) {
			//if this instance has not yet been hit by this attack, hit it
			var _hitId = _hitByAttackNow[| _i];
			if(ds_list_find_index(hitByAttack, _hitId) == -1) {
				//if the id of the instance is not in the list we add it
				ds_list_add(hitByAttack, _hitId);
				with(_hitId) {
					//we hurt the player
					if(object_get_name(object_index) == "o_player") {
						hurt_player(id,_dmg, other.id); //dmg player	
					}//end if
					else {
						var _xx = o_player_block.x + (irandom_range(1, 5) * sign(image_xscale));	//witdh of player block sprite
						var _yy = o_player_block.y + irandom_range(1, 13);	//height of player block sprite
			
						var _particle = instance_create_layer(_xx, _yy, "Particles", o_hit_impact);
						with(_particle) {
							image_xscale =  other.image_xscale;
						}//end if
					}//end else
				}//end with
			}//end if
		}//end for
	}//end if
	
	ds_list_destroy(_hitByAttackNow); //avoid memory leaks
	mask_index = previousMask;	  //return entity mask

}//end script