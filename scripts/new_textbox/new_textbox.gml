///@desc new_textbox("Message", Background, [Responses])
///@arg Message
///@arg Background
///@arg [Responses]
function new_textbox(){
	
	var _obj;
	
	if(instance_exists(o_dialogue)) {
		_obj = o_dialogue_queue;
	}//end if
	else {
		_obj = o_dialogue;
	}//end else
	
	var _inst = instance_create_layer(-60,-60, "Misc", _obj);
	with(_inst) {
		msg = argument[0];
		if(instance_exists(other)) {
			originInstance = other.id;
		}//end if
		else {
			originInstance = noone;
		}//end else
		if(argument_count > 1) {
			background = argument[1]; 
		}//end if
		else {
			background = 0;
		}//end else
		if(argument_count > 2) {
			//trim markes from responses
			responses = argument[2];
			for(var _i = 0; _i < array_length(responses); _i++) {
				var _markerPosition = string_pos(":", responses[_i]);
				responseScripts[_i] = string_copy(responses[_i], 1, _markerPosition-1);
				responseScripts[_i] = real(responseScripts[_i]);
				responses[_i] = string_delete(responses[_i], 1, _markerPosition);
			}//end for
		}//end if
		else {
			responses = [-1];
			responseScripts = [-1];
		}//end else
	}//end with
	
	with(o_player) {
		if(state != player_state_lock) {
			previousState = state;
			state = player_state_lock;
		}//end if
	}//end with
}//end script