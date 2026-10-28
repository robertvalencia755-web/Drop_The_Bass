enum State {Explore, Fishing}

function changeStatus(status){
	playerState = status;
}

function changeStatus(status, fish){
	playerState = status;
	currentFish = fish;
}


//Movement variables
xSpeed = 0;
ySpeed = 0;
moveSpeed = 3;


//State variables
playerState = State.Explore;
currentFish = noone;