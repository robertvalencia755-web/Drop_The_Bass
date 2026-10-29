//Do bobbing animation
var bob;

if (alarm[2] == 0){
	if (bob){
		y -= 2;
		bob = !bob;
		alarm[2] = 1;
	} else {
		y += 2;
		bob = !bob;
		alarm[2] = 1;
	}
}
		


//Activate random fishing chance alarm
if (alarm[0] == 0){
	//Time 
	alarm[0] = 5;
}