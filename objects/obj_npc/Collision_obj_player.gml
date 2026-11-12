//probably a way too complicated way to do this but
if(keyboard_check_pressed(ord("E"))){
	with(obj_player){
		//checks if player isnt locked so you cant keep pressing e to make new text boxes
		if(playerState != PlayerState.Locked){
			//then goes through the text array and calls the newTextBox funtion which puts all the texts in a queue
			with(other){
				newTextBox(text,textResponses)
			}
		}
	}
}