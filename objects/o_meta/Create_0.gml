///@desc Initialize & Globals
randomize()	;														//creates a diferent seed and randomization every time game starts

scribble_font_set_default("s_font");								//set the font for scrible to use
scribble_anim_blink(15, 15, 1);
global.gamePaused = false;											//controls pause state for the game
global.pauseSurface = noone;										//surface tos tore our pause screen img
global.screenShake = true;											//set to true if want screen shake to apply

global.iCamera = instance_create_layer(0, 0, layer, o_camera);		//Create camera object
global.iControl = instance_create_layer(0, 0, layer, o_controls);	//Create control's object
global.iDevTools = instance_create_layer(0, 0, layer, o_devtools);	//Create camera object
global.iMusic = instance_create_layer(0, 0, layer, o_music_and_sfx);//Create music controller object
global.iGui = instance_create_layer(0, 0, layer, o_gui);			//Create gui controller object

global.targetRoom = -1;												//Target room name to go to
global.targetX = -1;												//target rooms x destination coordinate
global.targetY = -1;												//target rooms y destination coordinate
global.targetDir = 0;												//direction of player to face when enter the room

//scrible setup
//gpu_set_tex_filter(true);											//interpolation on!
global.font = font_add_sprite(s_font, 32, true, 1);					//setting the font in a variable
saveData = ds_map_create();											//DS system to store doors states while playing and changing rooms
window_set_cursor(cr_none);											//Hide cursor on game screen
surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);	//resize of the application surface to our standart Resolutions width and height
window_center();													//center the window after resize
//window_set_fullscreen(true);										//set window fullscreen on start
room_goto(ROOM_START);												//Transition to start