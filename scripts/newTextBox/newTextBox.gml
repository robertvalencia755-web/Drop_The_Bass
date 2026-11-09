function newTextBox(){
	var _obj
	if(instance_exists(obj_dialogue)) _obj = obj_dialogueQueued
	else _obj = obj_dialogue
	with(instance_create_layer(0,0, "Instances",_obj)){
		text = argument[0]
		if(instance_exists(other)) originInstance = other.id 
		else originInstance = noone
	}
	
	with(obj_player){
		if(obj_player.playerState != State.Locked){
			lastState = playerState
			changeState(State.Locked)
		}
	}
}