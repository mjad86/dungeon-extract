x = o_player.image_xscale > 0 ? o_player.bbox_right : o_player.bbox_left-sprite_width;

audio_emitter_position(emitter, x, y, 0); //update emitter position

if(o_player.state != player_state_block_idle) {
	instance_destroy();
}//end if