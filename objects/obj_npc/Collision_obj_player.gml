if(keyboard_check_pressed(ord("E"))){
	var inst = instance_create_layer(x,y, "Instances", obj_dialogue)
	with(inst){
		text[0] = "Hey! welcome to fish world"
		text[1] = "You don't talk much do ya?"
		text[2] = "Why don't you go catch me some guppys so I can tell you more about fish world"
		text[3] = "Press F to fish"
		textLast = 3
		textWidth = 500
		textX = 100
		textY = 800
		text[textCurrent] = stringWrap(text[textCurrent],textWidth)
	}
}