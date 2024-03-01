switch(type) {
	case TRANS_TYPE.SLIDE:
		draw_set_alpha(1);
		draw_set_color(c_black);
		draw_rectangle(0, 0, width, percent * heightHalf, false);
		draw_rectangle(0, height, width, height - (percent * heightHalf), false);
	break;
	case TRANS_TYPE.FADE:
		draw_set_color(c_black);
		draw_set_alpha(percent);
		draw_rectangle(0, 0, width, height, false);
	break;
	case TRANS_TYPE.SQUARE:
		draw_set_alpha(1);
		draw_set_color(c_black);
		//top
		draw_rectangle(0, 0, width, percent * heightHalf, false);
		//left
		draw_rectangle(0, 0, percent * widthHalf, height, false);
		//right
		draw_rectangle(width, 0, width - (percent * widthHalf), height, false);
		//bottom
		draw_rectangle(0, height, width, height - (percent * heightHalf), false);
	break;
}//end switch