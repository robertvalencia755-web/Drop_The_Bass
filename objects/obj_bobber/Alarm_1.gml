

var slower = calcThrowSlow(lossSpeedStep, force);
speed = max(0, speed - slower);
lossSpeedStep--;

show_debug_message(string(slower));
show_debug_message(string(speed));
show_debug_message(string(lossSpeedStep))


