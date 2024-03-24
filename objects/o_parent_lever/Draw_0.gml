
if(interact) {
	shader_set(sh_white_outline);

	var _texture = sprite_get_texture(sprite_index, image_index);
	var _textureWidth = texture_get_texel_width(_texture);
	var _textureHeight = texture_get_texel_height(_texture);

	shader_set_uniform_f(uniformHandle, _textureWidth, _textureHeight);
	shader_set_uniform_f(alphaValue, alpha);
}//end if

draw_self();

if(shader_current() != -1) {
	shader_reset();
}//end if