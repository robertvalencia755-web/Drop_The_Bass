inventory = obj_Data_Bus.inventory;
equipment = obj_Data_Bus.equipment;



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
	
	var _fishList = global.itemNames;
	var _count = array_length(coords);
	spawnedItems = array_create(_count);
	
	for (var i = 0; i < _count; i++) {
		spawnedItems[i] = instance_create_layer(coords[i][0], coords[i][1], layer, obj_item, {
			item: _fishList[i],
			depth: depth - 10
		});
	}
}

spawnFishItems();



