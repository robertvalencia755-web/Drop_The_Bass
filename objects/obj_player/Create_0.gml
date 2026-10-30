enum State {Explore, Fishing}

function changeStatus(status){
	playerState = status;
}



//Movement variables
xSpeed = 0;
ySpeed = 0;
moveSpeed = 3;
direction = 270;


//State variables
playerState = State.Explore;
currentFish = noone;