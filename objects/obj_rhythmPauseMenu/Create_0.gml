spawnedItems = [];

spawnButtons();


function spawnButtons(){
	var coords = [
		[768, 540],
		[1088, 540]
	];
	
	var _closeInst = instance_create_layer(coords[0][0], coords[0][1], layer, obj_closeButton, {
		depth: depth - 10,
		image_xscale: 2,
		image_yscale: 2
	});
	var _giveUpInst = instance_create_layer(coords[1][0], coords[1][1], layer, obj_giveUpButton, {depth: depth - 10})
	
	array_push(spawnedItems, _closeInst);
	array_push(spawnedItems, _giveUpInst);
}