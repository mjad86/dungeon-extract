///@desc set_animation_sprite(sprite, index, speed)
///@arg SPRITE name to set the player to
///@arg INDEX set the player frame to start at (0 being the first one)
///@arg SPEED set the animation of the sprite (1 to animate, 0 to stop)
function set_animation_sprite() {

	var _sprite = argument0;
	var _index = argument1;
	var _speed = argument2;
	
	//if sprite is diferent then set new sprite, index and speed
	if(sprite_index != _sprite) {
		sprite_index = _sprite
		image_index = _index;
		image_speed = _speed;
	}//end if

}//end script