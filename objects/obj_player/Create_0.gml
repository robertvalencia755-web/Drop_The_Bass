enum State {Explore, Fishing, Rythm}

function caughtFish(fish){
	currentFish = fish;
}

function changeState(state){
	playerState = state;
}

function addInventory(fish, num){
	inventory.fish += num;
}

function removeInventory(fish, num){
	inventory.fish -= num;
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
playerState = State.Explore;
currentFish = undefined;

//Equipment
equipment = {
	currentRod: global.fishingRod1,
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