///@desc initialize variables
//choose sprite
sprite_index = choose(s_dust01, s_dust02);

addMovement = false;

delay = ROOM_SPEED * 2;

image_speed = 0;
image_xscale = random_range(0.75, 1);
image_yscale = random_range(0.75, 1);
image_index = random_range(0, image_number);