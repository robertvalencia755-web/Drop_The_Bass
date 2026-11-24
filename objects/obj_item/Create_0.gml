display_set_gui_size(1920, 1080);

function updateSprite(){
	itemDefine();
	
	if (isEquipped && sprite_index != -1 && sprite_get_width(sprite_index) > 0) {
		image_xscale = 192 / sprite_get_width(sprite_index);
		image_yscale = 192 / sprite_get_height(sprite_index);
	}
}


enum Item {
	/*FISH*/ Anchovy, Angelfish, Blobfish, Catfish, Goldfish, Guppy, Mackeral, Pufferfish, Seahorse, Snapper, Swordfish, Whale,
	/* FISHING RODS */ TwigRod, CoralCaster, TheHooker, TroutWhisperer, BigBertha, HolyRod, 
	/* FISHING BAIT*/ LeafBait, NemoBait, Ribbait, WormBait, MicroplasticBait, MasterBait,
	Carry
	}

copy = false;
num = undefined;
offset = 81;

function itemDefine(){
	switch(item) {
	//FISH ======================================
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
	
	//FISHING RODS ======================================
	
	case Item.TwigRod:
		sprite_index = spr_twigRod;
		break;
		
	case Item.CoralCaster:
		sprite_index = spr_coralCaster;
		break;
	
	case Item.TheHooker:
		sprite_index = spr_theHooker;
		break;
	
	case Item.TroutWhisperer:
		sprite_index = spr_troutWhisperer;
		break;
	
	case Item.BigBertha:
		sprite_index = spr_bigBertha;
		break;
	
	case Item.HolyRod:
		sprite_index = spr_holyRod;
		break;
	
	//FISHING BAIT ======================================
	
	case Item.LeafBait:
		sprite_index = spr_leafBait;
		break;
	
	case Item.NemoBait:
		sprite_index = spr_nemoBait;
		break;
	
	case Item.Ribbait:
		sprite_index = spr_ribbait;
		break;
	
	case Item.WormBait:
		sprite_index = spr_wormBait;
		break;
	
	case Item.MicroplasticBait:
		sprite_index = spr_microplasticBait;
		break;
	
	case Item.MasterBait:
		sprite_index = spr_masterBait;
		break;
		
	default:
		sprite_index = -1;
}
}



updateSprite();