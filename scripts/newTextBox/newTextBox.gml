//@arg text
//@arg [responses]
//creates a new text box when called, handles responses as well
function newTextBox(){
	var _obj
	if(instance_exists(obj_dialogue)) _obj = obj_dialogueQueued
	else _obj = obj_dialogue
	with(instance_create_layer(0,0, "Instances",_obj)){
		text = argument[0]
		//this is just incase we ever need to know what object created the text box
		//set this up incase we need the shopkeeper to do something different or signs or whatever
		if(instance_exists(other)) originInstance = other.id 
		else originInstance = noone
		if(argument_count>1) {
			//trimmin markers from responses
			responses = [];
            array_copy(responses, 0, argument[1], 0, array_length(argument[1]));
			for(i = 0; i< array_length(responses); i++){
				var _markerPosition = string_pos(":", responses[i])
				responseScript[i] = real(string_copy(responses[i],1,_markerPosition-1))
				responses[i] = string_delete(responses[i],1,_markerPosition)
			}
		}
		else{
			responses = [-1]
			responseScript = [-1]
		}
	}
	
	
	with(obj_player){
		if(obj_player.playerState != State.Locked){
			lastState = playerState
			changeState(State.Locked)
		}
	}
}