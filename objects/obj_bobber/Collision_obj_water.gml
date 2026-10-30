//Do bobbing animation
//var bob;
if (landed){
	if (alarm[0] == -1){
		if (bob){
			y -= 3;
			bob = !bob;
			alarm[0] = 60;
		} else {
			y += 3;
			bob = !bob;
			alarm[0] = 60;
		}
	}
}
		


