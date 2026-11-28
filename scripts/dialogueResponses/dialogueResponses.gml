//@arg responseScript
//this giant switch statement will hold every possible response in the game, test text in there right now
//can be changed as needed
function dialogueResponses(){
	switch(argument[0]){
		case 0: break
		// EXAMPLE: case 1: newTextBox("Fish world! I'm gna teach u how to fish",["3:Oh ok","0:um"]); break
		
		//Tutorial Fish-Stick conversation ============================================
		//use the up and down arrows to navigate the response menu ["1:Where am I?",
		case 1: newTextBox("You are in Fish World! \n Here we catch fish, and sing along to the tune of the pond");
		case 2: newTextBox("You arent from around here are you?", 
							["3:Not really, can you help me out?"]); break;
		case 3: newTextBox("Well I specifically cant, but the Great Whale might!", 
							["4:The Great Whale?", "5:How do I see The Great Whale?"]); break;
		case 4: newTextBox("He's the strongest being of Fish World, I'm sure he would be able to help you out!", 
							["5:How do I meet this Great Whale?"]); break;
		case 5: newTextBox("He doesnt just show himself to anyone. \n You must prove yourself and become a pro-fisher of Fish World", 
							["6:How do I do that?", "10:Okay! No need to explain. Where do I start?"]); break
		case 6: newTextBox("It looks like you already have some basic gear. \n Just hold 'F' to charge your fishing rod. Then let go to cast", 
							["7: Okay", "10:I understand, no need to explain more"]); break
		case 7: newTextBox("You can also use Fishing Bait to increase your chance to get a bite", 
							["8: Okay", "10:I understand, no need to explain more"]); break
		case 8: newTextBox("Before you catch the fish on your reel, you must move to the rhythm of the waves!", 
							["9: Okay", "10:I understand, no need to explain more"]); break
		case 9: newTextBox("To upgrade your gear, you must find some recipes hidden around the world, and then craft it here!", //CHANGE BASED ON HOW CRAFTING WILL WORK ==================
							["10:I understand"]); break
		case 10: newTextBox("Alright enough yapping then, go ahead and try catching 2 fish. \n Good Luck!"); break;
		default: break
	}
}