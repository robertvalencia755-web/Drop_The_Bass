function checkFishing(key){
	if (keyboard_check_pressed(key)){
		
		if (instance_exists(obj_bobber)){
			instance_destroy(obj_bobber);
			changeState(PlayerState.Explore);
		} else {
			var bobber = instance_create_layer(x, y, "Instances", obj_bobber)
			bobber.direction = direction;
			bobber.catchChance *= equipment.currentBait.catchMultiplier; //Lower the catch chance 
			changeState(PlayerState.Fishing);
		}
		
	}
}


function slowSpeed(x) {
    return (obj_bobber.baseSpeed / 9) * (power(10, x / 10) - 1);
}


function calcThrowSlow(n) {
    return slowSpeed(n) - slowSpeed(n - 1);
}