	
	if (playerState == State.Explore){
		
		//Player movement logic
		EightMovementControls(ord("D"), ord("A"), ord("W"), ord("S"));
		EightMovement(spr_playerRight, spr_playerUpRight, spr_playerUp,
		spr_playerUpLeft, spr_playerLeft, spr_playerDownLeft, spr_playerDown,
		spr_playerDownRight);
		
		//check for fishing key
		checkFishing(ord("F"));
	} else if (playerState == State.Fishing){
		//Do the fishing stuff
	}