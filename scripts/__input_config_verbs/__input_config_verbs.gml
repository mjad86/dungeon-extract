// Feather disable all

//This script contains the default profiles, and hence the default bindings and verbs, for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The struct return by this script contains the names of each default profile.
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse() for
//mouse buttons

function __input_config_verbs()
{
    return {
        keyboard_and_mouse:
        {
            up:    [input_binding_key("W")],
            down:  [input_binding_key("S")],
            left:  [input_binding_key("A")],
            right: [input_binding_key("D")],
			
			action: input_binding_key("E"),   
			attack: input_binding_key("K"),  
			dodge: input_binding_key("Q"), 
			block: input_binding_key("J"), 
            jump:  input_binding_key(vk_space),
            cancel:  input_binding_key("Q"),
			
			cam_up:    input_binding_key(vk_numpad8),
            cam_down:  input_binding_key(vk_numpad2),
            cam_left:  input_binding_key(vk_numpad4),
            cam_right: input_binding_key(vk_numpad6),
			
            pause:  [input_binding_key(vk_enter), input_binding_key(vk_escape)],
                        
        },
        
        gamepad:
        {
            //up:    [input_binding_gamepad_axis(gp_axislv, true),  input_binding_gamepad_button(gp_padu)],
            //down:  [input_binding_gamepad_axis(gp_axislv, false), input_binding_gamepad_button(gp_padd)],
            //left:  [input_binding_gamepad_axis(gp_axislh, true),  input_binding_gamepad_button(gp_padl)],
            //right: [input_binding_gamepad_axis(gp_axislh, false), input_binding_gamepad_button(gp_padr)],
			
			up:    [input_binding_gamepad_button(gp_padu)],
            down:  [input_binding_gamepad_button(gp_padd)],
            left:  [input_binding_gamepad_button(gp_padl)],
            right: [input_binding_gamepad_button(gp_padr)],
            
            jump:  input_binding_gamepad_button(gp_face1),
            cancel:  input_binding_gamepad_button(gp_face2),
			attack:  input_binding_gamepad_button(gp_face3),
            action:  input_binding_gamepad_button(gp_face4),
			block:  input_binding_gamepad_button(gp_shoulderr),
			dodge:  input_binding_gamepad_button(gp_face2),
            
            cam_up:    input_binding_gamepad_axis(gp_axisrv, true),
            cam_down:  input_binding_gamepad_axis(gp_axisrv, false),
            cam_left:  input_binding_gamepad_axis(gp_axisrh, true),
            cam_right: input_binding_gamepad_axis(gp_axisrh, false),      
            
            pause: input_binding_gamepad_button(gp_start),
        },
        
        touch:
        {
            up:    input_binding_virtual_button(),
            down:  input_binding_virtual_button(),
            left:  input_binding_virtual_button(),
            right: input_binding_virtual_button(),
            
            accept:  input_binding_virtual_button(),
            cancel:  input_binding_virtual_button(),
            action:  input_binding_virtual_button(),
            special: input_binding_virtual_button(),
            
            pause: input_binding_virtual_button(),
        }
    };
}