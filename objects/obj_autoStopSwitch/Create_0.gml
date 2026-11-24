display_set_gui_size(1920, 1080);

autoStop = obj_Data_Bus.autoStop;
text = "If on, songs will end when you reach the goal or fail";

flipSwitch();

function flipSwitch(){
	if (autoStop) {
		image_index = 1;
	} else {
		image_index = 0;
	}
}