//stops at 1 when x1/x2 meet desired targets
lerpProgress += (1 - lerpProgress) / 50

textProgress += textSpeed

x1 = lerp(x1,x1Target,lerpProgress)
x2 = lerp(x2,x2Target,lerpProgress)

//for skipping dialogue can be changed from space just thought this was easy
if (keyboard_check_pressed(vk_space)){
	var _messageLength = string_length(text)
	if(textProgress >= _messageLength){
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