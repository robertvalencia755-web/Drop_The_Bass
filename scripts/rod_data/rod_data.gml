//This script will contain global data of all the fishing rods in the game and associating attributes
//The fish in fishAllowed will have the difficulty of the corresponding index within fishDifficulty

global.testRod = {
	name: "Testing Rod",
	fishAllowed: [global.testFish, global.fish1, global.fish2],
	fishDifficulty: [Difficulty.Easy, Difficulty.Easy, Difficulty.Easy]
}

global.fishingRod1 = {
	name: "Medium Rod",
	fishAllowed: [global.testFish, global.fish1],
	fishDifficulty: [Difficulty.Medium, Difficulty.Medium]
}

global.fishingRod2 = {
	name: "Hard Rod",
	fishAllowed: [ global.testFish, global.fish1 ],
	fishDifficulty: [ Difficulty.Hard, Difficulty.Hard]
}

global.fishingRod3 = {
	name: "Creative Rod Name 3",
	fishAllowed: [ ],
	fishDifficulty: [ ]
}

global.fishingRod4 = {
	name: "Creative Rod Name 4",
	fishAllowed: [ ],
	fishDifficulty: [ ]
}

global.fishingRod5 = {
	name: "Creative Rod Name 5",
	fishAllowed: [ ],
	fishDifficulty: [ ]
}

function updateFishRodData(currentRod){
	for (var i = 0; i < array_length(currentRod.fishAllowed); i++){
		currentRod.fishAllowed[i].difficulty = currentRod.fishDifficulty[i];
	}
}