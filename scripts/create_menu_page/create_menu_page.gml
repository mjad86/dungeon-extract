///@desc create_menu_page()
///@arg [Name1, Type1, Entries1...]
///@arg [Name2, Type2, Entries2...]
function create_menu_page() {
	
	var _arg, _i = 0;
	
	repeat(argument_count) {
		_arg[_i] = argument[_i];
		_i++
	}//end repeat

	var _dsGridId = ds_grid_create(5, argument_count);
	_i = 0;
	repeat(argument_count) {
		var _array = _arg[_i];
		var _arrayLen = array_length(_array);
		
		var _xx = 0;
		repeat(_arrayLen) {
			_dsGridId[# _xx, _i] = _array[_xx];
			_xx++;
		}//end repeat
		_i++
	}//end repeat
	return _dsGridId;
}//end script