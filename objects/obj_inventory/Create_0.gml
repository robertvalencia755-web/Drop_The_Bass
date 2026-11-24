inventory = obj_Data_Bus.inventory;
equipment = obj_Data_Bus.equipment;
spawnedItems = [];

currentRod = equipment.currentRod;
currentBait = equipment.currentBait;
currentRodSlot = noone;
currentBaitSlot = noone


// FISH ITEMS
// (188, 297) TOP LEFT
// (369, 297) TOP MIDDLE
// (550, 297) TOP RIGHT

// (188, 480) ROW 2 LEFT
// (369, 480) ROW 2 MIDDLE
// (550, 480) ROW 2 RIGHT

// (188, 663) ROW 3 LEFT
// (369, 663) ROW 3 MIDDLE
// (550, 663) ROW 3 RIGHT

// (188, 846) BOTTOM LEFT
// (369, 846) BOTTOM MIDDLE
// (550, 846) BOTTOM RIGHT
function spawnFishItems(){
	var coords = [
		[188, 297], [369, 297], [550, 297],
		[188, 480], [369, 480], [550, 480],
		[188, 663], [369, 663], [550, 663],
		[188, 846], [369, 846], [550, 846]
	];
	
	var _fishList = global.fishRefs;
	var _count = array_length(_fishList);
	
	for (var i = 0; i < _count; i++) {
		var _inst = instance_create_layer(coords[i][0], coords[i][1], layer, obj_item, {
			item: _fishList[i].ref,
			name: _fishList[i].name,
			itemCategory: "FISH",
			isEquipped: false,
			depth: depth - 10
		});
		array_push(spawnedItems, _inst);
	}
}


// (846, 297) TOP LEFT
// (1027, 297) TOP MIDDLE
// (1208, 297) TOP RIGHT

// (846, 480) ROW 2 LEFT
// (1027, 480) ROW 2 MIDDLE
// (1208, 480) ROW 2 RIGHT
function spawnRodItems(){
	//For each rod inside ownedRods
	// Spawn obj_item with item: rod.ref
	
	var coords = [
		[846, 297], [1027, 297], [1208, 297],
		[846, 480], [1027, 480], [1208, 480]
	];
	
	var _count = array_length(equipment.ownedRods);
	
	for (var i = 0; i < _count; i ++){
		var _rod = equipment.ownedRods[i];
		var _itemRef = _rod.ref;
		var _itemName = _rod.name;
		var _inst = instance_create_layer(coords[i][0], coords[i][1], layer, obj_item, {
			item: _itemRef,
			name: _itemName,
			itemData: _rod,
			itemCategory: "ROD",
			isEquipped: false,
			depth: depth - 10
		});
		
		array_push(spawnedItems, _inst);
	}
}

// (846, 663) ROW 3 LEFT
// (1027, 663) ROW 3 MIDDLE
// (1208, 663) ROW 3 RIGHT

// (846, 846) BOTTOM LEFT
// (1027, 846) BOTTOM MIDDLE
// (1208, 846) BOTTOM RIGHT
function spawnBaitItems(){
	//For each bait inside ownedBait
	// Spawn obj_item with item: bait.ref
	var coords = [
		[846, 663], [1027, 663], [1208, 663],
		[846, 846], [1027, 846], [1208, 846]
	];
	
	var _count = array_length(equipment.ownedBaits);
	
	for (var i = 0; i < _count; i ++){
		var _bait = equipment.ownedBaits[i];
		var _itemRef = _bait.ref;
		var _itemName = _bait.name;
		
		var _inst = instance_create_layer(coords[i][0], coords[i][1], layer, obj_item, {
			item: _itemRef,
			name: _itemName,
			itemData: _bait,
			itemCategory: "BAIT",
			isEquipped: false,
			depth: depth - 10
		});
		
		array_push(spawnedItems, _inst);
	}
}

//THESE SPRITES WILL BE 192x192
// (1567, 389)
// (1567, 751)
function spawnCurrentItems(){
	// spawn obj_item with item: equipment.currentRod.ref
	// spawn obj_item with item: equipment.currentBait.ref
	// scale size to 192x192
	var coords = [
		[1567, 389],
		[1567, 751]
	];
	
	
	//CURRENT ROD ===========
	var _rodRef = currentRod.ref;
	var _rodName = currentRod.name;
	var _rodInst = instance_create_layer(coords[0][0], coords[0][1], layer, obj_item, {
		item: _rodRef,
		name: _rodName,
		itemData: currentRod,
		itemCategory: "ROD",
		isEquipped: true,
		depth: depth - 10
	});
	
	_rodInst.image_xscale = 192 / sprite_get_width(_rodInst.sprite_index);
	_rodInst.image_yscale = 192 / sprite_get_height(_rodInst.sprite_index);
	
	currentRodSlot = _rodInst
	array_push(spawnedItems, _rodInst);
	
	
	//CURRENT BAIT ===========
	
	var _baitRef = currentBait.ref;
	var _baitName = currentBait.name;
	var _baitInst = instance_create_layer(coords[1][0], coords[1][1], layer, obj_item, {
		item: _baitRef,
		name: _baitName,
		itemData: currentBait,
		itemCategory: "BAIT",
		isEquipped: true,
		
		depth: depth - 10
	});
	
	_baitInst.image_xscale = 192 / sprite_get_width(_baitInst.sprite_index);
	_baitInst.image_yscale = 192 / sprite_get_height(_baitInst.sprite_index);
	
	currentBaitSlot = _baitInst;
	array_push(spawnedItems, _baitInst);
}


function equipRod(newRodData){
	currentRod = newRodData;
	equipment.currentRod = newRodData;
	updateFishRodData(equipment.currentRod);
	
	if (instance_exists(currentRodSlot)){
		currentRodSlot.item = newRodData.ref;
		currentRodSlot.name = newRodData.name;
		currentRodSlot.itemData = newRodData;
		currentRodSlot.updateSprite();
	}
}

function equipBait(newBaitData){
	currentBait = newBaitData;
	equipment.currentBait = newBaitData;
	
	if (instance_exists(currentBaitSlot)){
		currentBaitSlot.item = newBaitData.ref;
		currentBaitSlot.name = newBaitData.name;
		currentBaitSlot.itemData = newBaitData;
		currentBaitSlot.updateSprite();
	}
}

spawnFishItems();
spawnRodItems();
spawnBaitItems();
spawnCurrentItems();



