
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if (!copy && mouse_check_button_pressed(mb_left) && position_meeting(_mx, _my, id)) {
	var _copy = instance_copy(false);
	with (_copy){
		copy = true;
		num = undefined;
		depth -= 10;
	}
	
}

if (copy && mouse_check_button(mb_left)){
	x = device_mouse_x_to_gui(0);
	y = device_mouse_y_to_gui(0);
}

if (copy && mouse_check_button_released(mb_left)){
	//Can add check for crafting placement here
	instance_destroy();
}