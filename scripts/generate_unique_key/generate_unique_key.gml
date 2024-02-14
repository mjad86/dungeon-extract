///@desc generate_unique)key()
function generate_unique_key() {
	
	//returns generates a unique key
	return room_get_name(room)+object_get_name(object_index)+string(round(x))+string(round(y));

}//end script