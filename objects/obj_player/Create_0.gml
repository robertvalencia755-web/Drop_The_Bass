enum State {Explore, Fishing}

function caughtFish(fish){
	currentFish = fish;
	playerState = State.Fishing;
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
currentFish = noone;