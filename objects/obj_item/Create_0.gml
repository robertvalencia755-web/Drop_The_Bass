display_set_gui_size(1920, 1080);
enum Item {Anchovy, Angelfish, Blobfish, Catfish, Goldfish, Guppy, Mackeral, Pufferfish, Seahorse, Snapper, Swordfish, Whale, Carry}
copy = false;
num = undefined;
offset = 81;

if (item != Item.Carry){
	name = global.fishNames[item];
}

switch(item) {
	case Item.Anchovy:
		sprite_index = spr_anchovy;
		num = obj_inventory.inventory.anchovy;
		break;
	
	case Item.Angelfish:
		sprite_index = spr_angelfish;
		num = obj_inventory.inventory.angelfish;
		break;
		
	case Item.Blobfish:
		sprite_index = spr_blobfish;
		num = obj_inventory.inventory.blobfish;
		break;
		
	case Item.Catfish:
		sprite_index = spr_catfish;
		num = obj_inventory.inventory.catfish;
		break;
		
	case Item.Goldfish:
		sprite_index = spr_goldfish;
		num = obj_inventory.inventory.goldfish;
		break;
		
	case Item.Guppy:
		sprite_index = spr_guppy;
		num = obj_inventory.inventory.guppy;
		break;
		
	case Item.Mackeral:
		sprite_index = spr_mackeral;
		num = obj_inventory.inventory.mackeral;
		break;
		
	case Item.Pufferfish:
		sprite_index = spr_pufferfish;
		num = obj_inventory.inventory.pufferfish;
		break;
		
	case Item.Seahorse:
		sprite_index = spr_seahorse;
		num = obj_inventory.inventory.seahorse;
		break;
		
	case Item.Snapper:
		sprite_index = spr_snapper;
		num = obj_inventory.inventory.snapper;
		break;
	
	case Item.Swordfish:
		sprite_index = spr_swordfish;
		num = obj_inventory.inventory.swordfish;
		break;
		
	case Item.Whale:
		sprite_index = spr_whale;
		num = obj_inventory.inventory.whale;
		break;
}
