//@arg responseScript
//this giant switch statement will hold every possible response in the game, test text in there right now
//can be changed as needed
function dialogueResponses(){
	switch(argument[0]){
		case 0: break
		case 1: newTextBox("Fish world! I'm gna teach u how to fish",["3:Oh ok","0:um"]); break
		case 2: newTextBox("Im Glorpo, I'm gna teach u how to fish",["3:Oh ok","0:um"]); break
		case 3: newTextBox("This is the end"); break
		default: break
	}
}