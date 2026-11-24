//Basic Pause Stuff
paused = false;

enum Difficulty {Easy, Medium, Hard};

//Transporting to Rhythm stuff
multiplier = 1;
song = undefined;
mapDiff = undefined;

//Player Attributes
inventory = undefined;
equipment = undefined


//Take back to main
success = undefined;

function reset(){
	multiplier = 1;
	song = undefined;
	mapDiff = undefined;
	inventory = undefined;
	equipment = undefined;
	

	success = undefined;
}

function playerUploadToBus(song, mapDiff, multiplier, inventory){
	self.song = song;
	self.mapDiff = mapDiff
	self.multiplier = multiplier;
	self.inventory = inventory;
}

function inventoryUploadToBus(){
	if (instance_exists(obj_player)) {
		inventory = obj_player.inventory;
		equipment = obj_player.equipment;
	}
}

function rhythmUploadToBus(success){
	self.success = success;
}



//PAUSE FUNCTIONS
function pause(){
	if (equipment == undefined && inventory == undefined){
		inventoryUploadToBus();
	}
	
	instance_deactivate_all(true);
	audio_pause_all();
	
	instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_inventory);
	
}

function unpause(){
	instance_activate_all();
	audio_resume_all();
	reset();
	
	instance_destroy(obj_inventory);
}