///@desc quad(_vb, _x1, _y1, _x2, _y2)
///@arg _vb
///@arg _x1
///@arg _y1
///@arg _x2
///@arg _y2

function quad(_vb, _x1, _y1, _x2, _y2) {

	vertex_position_3d(_vb, _x1, _y1, 0);
	vertex_position_3d(_vb, _x1, _y1, 1);
	vertex_position_3d(_vb, _x2, _y2, 0);
	
	vertex_position_3d(_vb, _x1, _y1, 1);
	vertex_position_3d(_vb, _x2, _y2, 0);
	vertex_position_3d(_vb, _x2, _y2, 1);	
	

}//end script