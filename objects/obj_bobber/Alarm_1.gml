

var slower = calcThrowSlow(lossSpeedStep);
speed -= slower;
lossSpeedStep--;

show_debug_message(string(slower));
show_debug_message(string(speed));
show_debug_message(string(lossSpeedStep))


