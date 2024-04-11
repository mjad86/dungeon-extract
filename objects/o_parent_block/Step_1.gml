x = ownerId.image_xscale > 0 ? ownerId.bbox_right : ownerId.bbox_left-sprite_width;

audio_emitter_position(emitter, x, y, 0); //update emitter position

if(instance_exists(o_hit_impact) && ownerId.state == skeleton_state_block_idle) {
	ownerId.state = skeleton_state_block;
}//end if

if(ownerId.state != skeleton_state_block_idle && ownerId.state != skeleton_state_block) {
	instance_destroy();
}//end if
