x = o_player.x;
y = o_player.y;
image_xscale = o_player.image_xscale;

if(o_player.state !=  player_state_block_idle) {
	instance_destroy();
}//end if