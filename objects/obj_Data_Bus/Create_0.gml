//Basic Pause Stuff
paused = false;

enum Difficulty {Easy, Medium, Hard};

//Transporting to Rhythm stuff
goal = undefined;
multiplier = 1;
song = undefined;
mapDiff = Difficulty.Hard;


//Take back to main
success = undefined;

function reset(){
	goal = undefined;
	multiplier = 1;
	song = undefined;
	mapDiff = Difficulty.Hard;

	success = undefined;
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



//PAUSE FUNCTIONS
function pause(){
	
	instance_create_layer(obj_player.x , obj_player.y, "Instances", obj_quit_button);
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_inventory);
	
	instance_deactivate_all(true);
	audio_pause_all();
	
	instance_activate_object(obj_inventory);
	instance_activate_object(obj_quit_button);
	
	
}

function unpause(){
	instance_activate_all();
	audio_resume_all();
	
	instance_destroy(obj_quit_button);
	instance_destroy(obj_inventory);
}