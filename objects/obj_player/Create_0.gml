enum PlayerState {Explore, Fishing, Casting, Rhythm, RhythmComplete, Locked}

function caughtFish(fish){
	currentFish = fish;
}

function changeState(state){
	playerState = state;
}

function addInventory(fish, num){
	var key = fish.key;
	inventory[$ key] += num;
}

function removeInventory(fish, num){
	var key = fish.key;
	inventory[$ key] -= num;
	return inventory[$ key];
}




//Movement variables
xSpeed = 0;
ySpeed = 0;
moveSpeed = 3;
direction = 270;

//Fishing rod tip offset (adjust when rod sprite/positions are ready)
rodOffsetX = 0;
rodOffsetY = 0;
fishingKey = ord("F");


//State variables
playerState = PlayerState.Explore;
currentFish = undefined;
lastState = playerState;

//Equipment
equipment = {
	currentRod: global.testRod,
	currentBait: global.fishingBait1,
}


inventory = {
	anchovy: 0,
	angelfish: 0,
	catfish: 0,
	blobfish: 0,
	goldfish: 0,
	guppy: 0,
	mackeral: 0,
	pufferfish: 0,
	seahorse: 0,
	snapper: 0,
	swordfish: 0,
	whale: 0
}

//Update all data
updateFishRodData(equipment.currentRod);