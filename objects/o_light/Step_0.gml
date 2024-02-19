if(iluminate) {
	var _glowSpeed = 10;
	if(glowGrow) {
		if(size < glowSize) {
			size = min(glowSize, size + _glowSpeed);
		}//end if
		else {
			glowGrow = false;
		}//end else
	}//end if
	else {
		/*
		if(size > originalSize) {
			size = max(originalSize, size - _glowSpeed);
		}//end if
		else {
			glowGrow = true;
		}//end else
		*/
		size = random_range(size*0.75, size*0.95);
		glowGrow = true;
	}//end else
}//end  if