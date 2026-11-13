enum Difficulty {Easy, Medium, Hard};

//Transporting to Rhythm stuff
goal = 0;
multiplier = 1;
song = pointer_null;
mapDiff = Difficulty.Hard;


//Take back to main
success = pointer_null;

function reset(){
	goal = 0;
	multiplier = 1;
	song = pointer_null;
	mapDiff = Difficulty.Hard;

	success = pointer_null;
}

function playerUploadToBus(song, mapDiff, multiplier, goal){
	self.song = song;
	self.mapDiff = mapDiff
	self.goal = goal;
	self.multiplier = multiplier;
	
}

function rhythmUploadToBus(success){
	self.success = success;
}