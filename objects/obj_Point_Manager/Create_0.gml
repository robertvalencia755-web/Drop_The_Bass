enum RhythmState { PreStart, Playing, Delay, Fading, Completed };
points = 0;
beatmapIndex = 0;
goal = pointer_null;
multiplier = pointer_null;
song = pointer_null;
beatMap = pointer_null;
noteSpeed = pointer_null;

//downloadFromBus();
setTestInfo();

//The amount of time in seconds from the spawning circle to the player paddle, this provides travel compensation to keep things on beat
// [(Diameter1 - Diameter2) / (2 * speed)] / game_fps
travelTime = ((Spawn_Circumfrence.sprite_width - Beat_Circumfrence.sprite_width) / (2 * noteSpeed)) / game_get_speed(gamespeed_fps);
songState = RhythmState.PreStart;
songInstance = -1;
songTime = -travelTime;

delayTimer = 3.0;
fadeAlpha = 0.0;
fadeDuration = 1.0;





//Get data from bus
function downloadFromBus(){
	with(obj_Data_Bus){
		other.goal = goal;
		other.multiplier = multiplier;
		other.song = song;
		other.beatMap = song.maps[mapDiff];
		other.noteSpeed = song.noteSpeed[mapDiff];
	}

}

//upload data to bus
function uploadToBus(success){
	with(obj_Data_Bus){
		self.success = success;
	}
}

function setTestInfo(){
	goal = 100;
	multiplier = 1.0;
	song = global.testSong;
	beatMap = song.maps[Difficulty.Easy]
	noteSpeed = song.noteSpeed[Difficulty.Easy]
}

//spawn the necessary notes
function updateSpawning(){
	while (beatmapIndex < array_length(beatMap) && songTime >= (beatMap[beatmapIndex] - travelTime)) {
		var _coord = calcSpawn();
		spawnNote(_coord[0], _coord[1]);
		beatmapIndex++;
	}
}

//finished game functions
function finishGame(_success){
	songState = RhythmState.Delay;
	audio_stop_sound(songInstance);
	with (obj_note) instance_destroy();
	uploadToBus(_success);
}

function addPoints(){
	points += 10 * multiplier;
}

function subPoints(){
	points -= 10 * multiplier;
}

function milli(seconds){
	return seconds * 1000;
}

function secs(milliseconds){
	return milliseconds / 1000;
}

function spawnNote(_x, _y){
	instance_create_layer(_x, _y, "Instances", obj_note);
}

function calcSpawn(){
	var _h = Spawn_Circumfrence.x;
	var _k = Spawn_Circumfrence.y;
	var _r = Spawn_Circumfrence.sprite_width / 2;
	var _angle = random(360);
	
	var _x = _h + lengthdir_x(_r, _angle);
	var _y = _k + lengthdir_y(_r, _angle);
	
	return [_x, _y];
}