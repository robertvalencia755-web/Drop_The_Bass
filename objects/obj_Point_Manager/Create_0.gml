goal = 100 //Get goal from Bus
points = 0
multiplier = 1; //Get multiplier from Bus
song = global.test; //Get song from Bus
songMap = song.easyMap; //Get chosen song map from Bus
pointSpeed = songMap.pointSpeed

//The amount of time from the spawning circle to the player paddle, this provides travel compensation to keep things on beat
// [(Diameter1 - Diameter2) / (2 * speed)] / game_fps
travelTime = ((Spawn_Circumfrence.sprite_width - Beat_Circumfrence.sprite_width) / (2 * 4)) / game_get_speed(gamespeed_fps); //Change 4 to song BPM/speed

function addPoints(){
	points += 10 * multiplier;
}

function subPoints(){
	points -= 10 * multiplier;
}