
function checkFishing(key){
	var bobber = instance_find(obj_bobber, 0);
	if (keyboard_check(key)){
		
		if (keyboard_check_pressed(key)){ //IF FIRST TIME PRESSING
			show_debug_message("KEYBOARD_CHECK_PRESSED TRUE")
			if (instance_exists(obj_bobber)){
				show_debug_message("BOBBER EXISTS NOW DESTROY")
				instance_destroy(obj_bobber);
				changeState(PlayerState.Explore);
			} else { //OBJ_BOBBER DOESNT EXIST
				show_debug_message("BOBBER DOESNT EXIST NOW MAKE THE BOBBER")
				changeState(PlayerState.Casting)
				instance_create_layer(x, y, "Instances", obj_bobber);
			}
			
		} else{ //IF THIS ISNT THE FIRST TIME YOU ARE PRESSING
			show_debug_message("KEYBOARD_CHECK_PRESSED FALSE")
			var forceMin = 2; //Set to minimum force
			var forceMax = 7; //Set to maximum force
			var released = keyboard_check_released(key);
			var bobberExists = bobber != noone;
			
			if (!released && bobberExists){
				show_debug_message("THE KEY WASNT RELEASED AND BOBBER EXISTS")
				bobber.setForce(forceMin, forceMax);
				bobber.increment();
				bobber.updateForceGUI();
			}
		}
	}
	
	if (keyboard_check_released(key) && (bobber != noone)){
		show_debug_message("THE KEY WAS RELEASED AND BOBBER EXISTS");
		changeState(PlayerState.Fishing);
		bobber.setStats(10, direction, equipment.currentBait.catchMultiplier);
	}
}





function slowSpeed(x, force) {
    return (force / 9) * (power(10, x / 10) - 1);
}


function calcThrowSlow(n, force) {
    return slowSpeed(n, force) - slowSpeed(n - 1, force);
}