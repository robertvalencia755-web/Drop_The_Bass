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

//Settings
autoStop = false;

function resetSongs(){
	multiplier = 1;
	song = undefined;
	mapDiff = undefined;

	success = undefined;
}

function resetInventory(){
	inventory = undefined;
	equipment = undefined;
}

function reset(){
	resetSongs();
	resetInventory();
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
	
	
	if (room != Rhythm_Room && equipment == undefined && inventory == undefined){
		inventoryUploadToBus();
	}
	
	instance_deactivate_all(true);
	audio_pause_all();
	
	if (room == Rhythm_Room) {
		instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_rhythmPauseMenu);
	}else {
		instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_inventory);
	}
}

function unpause(){
	instance_activate_all();
	audio_resume_all();
	
	
	if (instance_exists(obj_inventory)) {resetInventory(); instance_destroy(obj_inventory);}
	if (instance_exists(obj_rhythmPauseMenu)) {instance_destroy(obj_rhythmPauseMenu);}
}

function changeAutoStop(){
		autoStop = !autoStop;
		return autoStop;
}