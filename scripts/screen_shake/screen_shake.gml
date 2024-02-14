///@desc screen_shake(magnitude, frames)
///@arg Magnitude sets the strength of the shake
///@arg Frames sets the length of the shake in frames (60 frames = 1 second)
function screen_shake() {
	
	var _magnitude = argument0;
	var _frames = argument1;
	
	with(global.iCamera) {
		
		if(_magnitude > shakeRemain) {
			shakeMagnitude = _magnitude;
			shakeRemain = shakeMagnitude;
			shakeLength = _frames;
		}//end if
		
	}//end witdh	

}//end script