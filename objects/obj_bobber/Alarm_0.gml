if (irandom(catchChance) == irandom(catchChance)){
	
	var fish = noone; //Grab accessible fish from water
	obj_player.caughtFish(fish);
	show_debug_message("Fish Caught!");
	instance_destroy();
}



//
