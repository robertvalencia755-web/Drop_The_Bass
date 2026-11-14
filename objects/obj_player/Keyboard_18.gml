
if(keyboard_check_pressed(ord("U"))){
	equipment.currentRod = global.testRod;
	updateFishRodData(equipment.currentRod);
}

if(keyboard_check_pressed(ord("I"))){
	equipment.currentRod = global.fishingRod1;
	updateFishRodData(equipment.currentRod);
}

if(keyboard_check_pressed(ord("O"))){
	equipment.currentRod = global.fishingRod2;
	updateFishRodData(equipment.currentRod);
}

if(keyboard_check_pressed(ord("G"))){
	equipment.currentBait = global.testingBait;
}

if(keyboard_check_pressed(ord("H"))){
	equipment.currentBait = global.fishingBait1;
}