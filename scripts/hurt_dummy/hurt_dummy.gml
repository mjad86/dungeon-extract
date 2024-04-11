///@desc hurt_dummy()
function hurt_dummy() {
	var _enemy = argument0;
	var _dmg = argument1;
	var _dmgDealer = argument2;		
	with(_enemy) {
		if(state != dummy_state_reset) {
			hp -= _dmg					//reduce hp by dmg amount
			entity_hit_solid()			//trigger flash
			create_dummy_hurt_impact();	//create impact particle effect
			
			if(!hurt) {
				//create healthbar
				healthBar = instance_create_layer(x, y, "Misc", o_enemy_healthbar); //create health bar
				hurt = true;
			}//end if
			with(healthBar) {
				maxHp = other.maxHp;
				hp = other.hp;
				ownerId = other.id;
				healthBarHeight = other.healthBarHeight;
				healthBarXPos = other.healthBarXPos;
			}//end with
			//hurt or die?
			if(hp <= 0) {
				//enemy is dead
				state = dummy_state_reset;
			}//end if
			else {
				//enemy still alive
				state = dummy_state_strike;	
				spr = choose(dummyHit3, dummyHit2, dummyHit1);
			}//end else
		}//end if			
	}//end with	
	screen_shake(2, 2);//apply screen shake effect on hit
}//end script