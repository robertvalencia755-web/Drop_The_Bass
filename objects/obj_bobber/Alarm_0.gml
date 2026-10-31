if (irandom(catchChance) == irandom(catchChance)){
	if (instance_exists(objOn) && instance_exists(obj_player)){
		var fish = objOn.Fish_Types; //Grab accessible fish from water obj
		
		//Check if the accessible fish is allowed to be caught given players equipment
		var allowedFish = array_intersection(fish, obj_player.currentRod.fishAllowed);
		
		//If any allowed fish are available in this water, pick one at random
		if (array_length(allowedFish) > 0){
			var chosenFish = allowedFish[irandom(array_length(allowedFish) - 1)];
			obj_player.caughtFish(chosenFish);
			show_debug_message("Fish Caught!");
			instance_destroy();
		}
	}
}



//
