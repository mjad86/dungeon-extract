///@desc sine_wave(_time, _period, _minimum, _maximum)
///@arg _time
///@arg _period
///@arg _minimum
///@arg _maximum
//NOTE: This function accepts a minimum and a maximum. Is helpful for times when you want a sine wave to go between two specific numbers.
function sine_between(_time, _period, _minimum, _maximum) {
    var midpoint = mean(_minimum, _maximum);
    var amplitude = _maximum - midpoint;
    return sine_wave(_time, _period, amplitude, midpoint);
}//end script