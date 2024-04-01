x = ownerId.image_xscale > 0 ? ownerId.bbox_right : ownerId.bbox_left-sprite_width;

audio_emitter_position(emitter, x, y, 0); //update emitter position

if(ownerId.state !=  player_state_block_idle) {
	instance_destroy();
}//end if
