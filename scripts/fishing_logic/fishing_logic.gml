function checkFishing(key){
	if (keyboard_check_pressed(key)){
		
		if (instance_exists(obj_bobber)){
			instance_destroy(obj_bobber);
		} else {
			instance_create_layer(x, y, "Instances", obj_bobber)
		}
		
	}
}


function slowSpeed(x) {
    return (obj_player.baseSpeed / 9) * (power(10, x / 10) - 1);
}


function calcThrowSlow(n) {
    return slowSpeed(n) - slowSpeed(n - 1);
}