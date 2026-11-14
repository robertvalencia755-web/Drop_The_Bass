switch (playerState){
	
	case PlayerState.Explore:
		
		//Player movement logic
		EightMovementControls(ord("D"), ord("A"), ord("W"), ord("S"));
		EightMovement(spr_playerRight, spr_playerUp, spr_playerLeft, spr_playerDown);
		
		//check for fishing key
		checkFishing(ord("F"));
		
		break;
		
	case PlayerState.Fishing:
		//check for fishing key
		checkFishing(ord("F"));
	
		//Do the fishing stuff
		if (currentFish != undefined){
			var songList = currentFish.songs;
			var song = songList[irandom(array_length(songList)-1)];
			var mapDiff = currentFish.difficulty;
			var goal = 100;
		
			//display the catching fish sprite + the fish on the screen
			//Allow player to choose to catch it or release, ie switch playerState to Explore or Rythm
			
			playerState = PlayerState.Rhythm;
			//instance_deactivate_all(true);
			//instance_activate_object(obj_Data_Bus);
			
			//Activate the transition animation and upload necessary data to DataBus
			obj_Data_Bus.playerUploadToBus(song, mapDiff, equipment.currentBait.catchMultiplier, goal);
			instance_create_depth(x, y, -9999, obj_transition);
		}
		
		break;
	
	case PlayerState.Rhythm:
		
		if (obj_Data_Bus.success != undefined){
			var success = obj_Data_Bus.success;
			if (success){
				//Show fish on screen saying successful catch
				addInventory(currentFish, 1);
			} else {
				//Show failure on screen
			}
		
			//Reset all necessary variables
			obj_Data_Bus.reset();
			currentFish = undefined;
			playerState = PlayerState.Explore;
			//instance_activate_all();
		}
		break;
		
	default:
		//nothing
		break;
	
}