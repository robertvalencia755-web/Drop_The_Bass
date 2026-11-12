if (playerState == PlayerState.Explore){
	currentFish = undefined;
		
		
	//Player movement logic
	EightMovementControls(ord("D"), ord("A"), ord("W"), ord("S"));
	EightMovement(spr_playerRight, spr_playerUp, spr_playerLeft, spr_playerDown);
		
	//check for fishing key
	checkFishing(ord("F"));
	
} else if (playerState == PlayerState.Fishing){
	//check for fishing key
	checkFishing(ord("F"));
	
	//Do the fishing stuff
	if (currentFish != undefined){
		//display the catching fish sprite + the fish on the screen
		//Allow player to choose to catch it or release, ie switch playerState to Explore or Rythm
		
	} else {
		
	}
} else if (playerState == PlayerState.Rythm){
	
} else if (playerState == PlayerState.Locked){
	
}