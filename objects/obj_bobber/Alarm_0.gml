if (irandom(catchChance) == irandom(catchChance)){
	
	var fish = objOn.Fish_Types; //Grab accessible fish from water obj
	
	//Check if the accessible fish is allowed to be caught given players equipment
	if (

	//randomly choose the fish type from accessible
	obj_player.caughtFish(fish[irandom(array_length(fish))]);
	show_debug_message("Fish Caught!");
	instance_destroy();
}



//
