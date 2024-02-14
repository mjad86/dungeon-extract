///@desc sprite_boardcast(message_type, callback)
///@arg message_type refering to the name of the broadcast in the image_index
///@arg callback the function that will return the SFX or music
function sprite_broadcast(message_type, callback) {

	if(event_data[? "event_type"] == "sprite event") {
		if(event_data[? "message"] == message_type) {
			callback();
		}//end if
	}//end if

}//end script