tableArr = [
	[0,0,0],
	[0,0,0],
	[0,0,0]
]

startY = 64
startX = 512

inventory = obj_player.inventory
obj_player.changeState(PlayerState.Locked)

for(i = 0; i < 10; i++){
		var _ins = instance_create_layer(startX,startY, "Instances",obj_fishCraft, {
			image_index : i,
			fish : i
			});
		startY += 32;
		if(i == 4) {
			startX += 32
			startY = 64;
		};
	}