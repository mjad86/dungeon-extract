///@desc sine_wave(_time, _period, _amplitude, _midpoint)
///@arg _time
///@arg _period
///@arg _amplitude
///@arg _midpoint
//NOTE: accepts an amplitude and a midpoint. To bob around a number.
function sine_wave(_time, _period, _amplitude, _midpoint) {
    return sin(_time * 2 * pi / _period) * _amplitude + _midpoint;
}//end script