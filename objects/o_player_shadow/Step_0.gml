x = o_player.x;
y = o_player.y;
depth = o_player.depth+1;

//start platform with nothing
platform = noone;

// Find all platforms beneath the player
var platforms = ds_list_create();
var num = collision_line_list(o_player.x, o_player.y, o_player.x, room_height, o_parent_wall, false, false, platforms, false);

// Find the highest platform found
for (var i = 0; i < num; i++) {
  if(platform == noone || platforms[| i].bbox_top < platform.bbox_top) {
	platform = platforms[| i];
  }//end if
}//end for

// Cleanup
ds_list_destroy(platforms);

if(!o_player.onGround) {
	//depending the players height from the ground we change the scales and alpha of
	//shadow, the farther from the floor the smaller and clearer the shadow will be.
	var _newScale = ((((platform.bbox_top/y)-1))-1)*(-1); 
	image_xscale = _newScale * sign(o_player.image_xscale);
	image_yscale = _newScale;
	image_alpha = _newScale;
}//end if
else {
	image_xscale = o_player.image_xscale;
	image_yscale = 1;
}//end el;se




