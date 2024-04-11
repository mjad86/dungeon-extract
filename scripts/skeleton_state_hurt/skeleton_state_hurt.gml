///@desc skeleton_state_hurt()
function skeleton_state_hurt() {
	
	hSpd = 0;	//stop player from moving
	
	set_animation_sprite(skeletonHurt, 0, 1);	//set sprite
	
	if(animation_end()) {
		if(point_distance(x, y, o_player.x, o_player.y) < aggroRange && o_player.state == player_state_attack) {
			timer = 0;
			sprite_index = skeletonBlockIdle;
			image_index = 0;
			image_speed = 0;
			image_xscale = -(o_player.image_xscale);
			var _block = instance_create_layer(bbox_right, bbox_top, "Misc", o_skeleton_block);
			with(_block) {
				ownerId = other.id;
			}//end with
			state = skeleton_state_block_idle;
		}//end if
		else {
			state = skeleton_state_idle;
		}//end else
	}//end if
	
}//end script