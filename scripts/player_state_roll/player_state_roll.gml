///@desc player_state_roll()
function player_state_roll() {
	//movement
	hSpd = image_xscale * rollSpd;

	moveDistanceRemaining = max(0, moveDistanceRemaining - rollSpd);	//slowly decrease the distance remaining by amount = to roll spd until it reaches 0
	//create dustparticles
	create_particle_dust(2);
	//set animation sprite
	var _index = 0 + min(((1-(moveDistanceRemaining/rollDistance)) * (sprite_get_number(sprite_index))),sprite_get_number(sprite_index)-1);
	set_animation_sprite(playerRoll, _index ,1);
	
	var _shade = round(_index);
	if(_shade mod 2 <= 0) {
		with(instance_create_depth(x, y, depth+1, o_trail)) {
			sprite_index = other.sprite_index;
			var _c = make_color_rgb(57,67,214);
			image_blend = _c;
			image_alpha = 0.7;
			image_speed = 0;
			image_xscale = other.image_xscale;
			image_index = other.image_index;
		}//end with
	}//end if
	
	if(moveDistanceRemaining <= 0) {
		state = player_state_idle;			//return to idle state
		hSpd = 0;							//reset hSpd to avoid sprint bug
		mask_index = playerMask;			//set mask;
	}//end if
	//MSG("ROLL");	
}//end script