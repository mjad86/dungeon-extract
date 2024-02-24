///@desc approach(start, target, shift)
///@arg start
///@arg target
///@arg shift
function approach(start, target, shift) {
    if (start < target) {
        return min(start+shift, target);
    } //end if
	else {
        return max(start-shift, target);
    }//end else
}//end script