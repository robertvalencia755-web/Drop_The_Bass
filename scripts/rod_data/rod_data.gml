//This script will contain global data of all the fishing rods in the game and associating attributes
//The fish in fishAllowed will have the difficulty of the corresponding index within fishDifficulty

global.fishingRod1 = {
	name: "Twig Rod",
	ref: Item.TwigRod,
	fishAllowed: [global.anchovy],
	fishDifficulty: [Difficulty.Medium]
}

global.fishingRod2 = {
	name: "Coral Caster",
	ref: Item.CoralCaster,
	fishAllowed: [global.anchovy ],
	fishDifficulty: [Difficulty.Hard]
}

global.fishingRod3 = {
	name: "The Hooker",
	ref: Item.TheHooker,
	fishAllowed: [ ],
	fishDifficulty: [ ]
}

global.fishingRod4 = {
	name: "Trout Whisperer",
	ref: Item.TroutWhisperer,
	fishAllowed: [ ],
	fishDifficulty: [ ]
}

global.fishingRod5 = {
	name: "Big Bertha",
	ref: Item.BigBertha,
	fishAllowed: [ ],
	fishDifficulty: [ ]
}

global.fishingRod6 = {
	name: "The Holy Rod",
	ref: Item.HolyRod,
	fishAllowed: [ ],
	fishDifficulty: [ ]
}

function updateFishRodData(currentRod){
	for (var i = 0; i < array_length(currentRod.fishAllowed); i++){
		currentRod.fishAllowed[i].difficulty = currentRod.fishDifficulty[i];
	}
}