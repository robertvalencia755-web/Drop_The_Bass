if (playerState == State.Explore){
	currentFish = undefined;
		
		
	//Player movement logic
	EightMovementControls(ord("D"), ord("A"), ord("W"), ord("S"));
	EightMovement(spr_playerRight, spr_playerUpRight, spr_playerUp,
	spr_playerUpLeft, spr_playerLeft, spr_playerDownLeft, spr_playerDown,
	spr_playerDownRight);
		
	//check for fishing key
	checkFishing(ord("F"));
	
} else if (playerState == State.Fishing){
	//check for fishing key
	checkFishing(ord("F"));
	
	//Do the fishing stuff
	if (currentFish != undefined){
		//display the catching fish sprite + the fish on the screen
		//Allow player to choose to catch it or release, ie switch playerState to Explore or Rythm
		
	} else {
		
	}
} else if (playerState == State.Rythm){
	
}