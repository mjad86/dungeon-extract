switch(effect) {
	case LIGHTFX.NOONE:
		//no special FX, just iluminate
	break;
	case LIGHTFX.FLICKER:
		//flickering light FX, like torches or bonefires
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
			size = random_range(size*0.75, size*0.95);
			glowGrow = true;
		}//end else
	break;
}//end switch