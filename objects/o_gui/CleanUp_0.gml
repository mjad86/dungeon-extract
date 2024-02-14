///@desc destroy to avoid memory leak
var _arrayLen = array_length(menuPage);
for(var _i = 0; _i < _arrayLen; _i++) {
	ds_grid_destroy(menuPage[_i]);
}//end for







