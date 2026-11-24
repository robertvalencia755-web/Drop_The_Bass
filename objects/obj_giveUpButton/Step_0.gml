var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if (mouse_check_button_pressed(mb_left) && position_meeting(_mx, _my, id)) {
	with (obj_Data_Bus) {
		rhythmUploadToBus(false);
		paused = false;
	}
	
	instance_activate_all();
	if (instance_exists(obj_rhythmPauseMenu)){
		instance_destroy(obj_rhythmPauseMenu);
	}
	audio_stop_all();
	room_goto(Main_World);
}