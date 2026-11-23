tableArr = [
	[0,0,0],
	[0,0,0],
	[0,0,0]
]

startY = 32

inventory = obj_player.inventory
obj_player.changeState(PlayerState.Locked)

for(i = 0; i < 10; i++){
		var _ins = instance_create_layer(x,startY, "Instances",obj_fishCraft, {
			sprite_index : i,
			fish : i
			});
		startY += 64;
	}