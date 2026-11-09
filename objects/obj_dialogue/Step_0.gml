//stops at 1 when x1/x2 meet desired targets
lerpProgress += (1 - lerpProgress) / 50

textProgress += textSpeed

x1 = lerp(x1,x1Target,lerpProgress)
x2 = lerp(x2,x2Target,lerpProgress)

//cycle through responses
responseSelected += keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))
var _max = array_length(responses)-1
var _min = 0
if(responseSelected > _max) responseSelected = _min
if(responseSelected < _min) responseSelected = _max

//for skipping dialogue can be changed from space just thought this was easy
if (keyboard_check_pressed(vk_space)){
	var _messageLength = string_length(text)
	if(textProgress >= _messageLength){
		//runs the script related to the response
		if(responses[0] != -1){
			with(originInstance) dialogueResponses(other.responseScript[other.responseSelected])
		}
		instance_destroy()
		if(instance_exists(obj_dialogueQueued)){
			with(obj_dialogueQueued) ticket--
		}
		else{
			with(obj_player) changeState(lastState)
		}
	}
	else{
		if(textProgress > 2){
			textProgress = _messageLength
		}
	}
}

