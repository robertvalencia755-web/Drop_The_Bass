enum PlayerState {Explore, Fishing, Rhythm, RhythmComplete, Locked}

function caughtFish(fish){
	currentFish = fish;
}

function changeState(state){
	playerState = state;
}

function addInventory(fish, num){
	var key = fish.name;
	inventory[$ key] += num;
}

function removeInventory(fish, num){
	var key = fish.name;
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
	fish1: 0,
	fish2: 0,
	fish3: 0,
	fish4: 0,
	fish5: 0,
	fish6: 0,
	fish7: 0,
	fish8: 0,
	fish9: 0,
	fish10: 0,
}

//Update all data
updateFishRodData(equipment.currentRod);