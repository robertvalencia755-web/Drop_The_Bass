
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if (!copy && !isEquipped && mouse_check_button_pressed(mb_left) && position_meeting(_mx, _my, id)) {
	var _copy = instance_copy(false);
	with (_copy){
		copy = true;
		num = undefined;
		depth -= 10;
	}
	
}

if (copy && mouse_check_button(mb_left)){
	x = device_mouse_x_to_gui(0);
	y = device_mouse_y_to_gui(0);
}

if (copy && mouse_check_button_released(mb_left)){
	
	//CHECK FOR ROD AND BAIT DROP IN INVENTORY
	if (instance_exists(obj_inventory)) {
		if (itemCategory == "ROD" && instance_exists(obj_inventory.currentRodSlot)) {
			if (position_meeting(x, y, obj_inventory.currentRodSlot)) {
				obj_inventory.equipRod(itemData);
			}
		} else if (itemCategory == "BAIT" && instance_exists(obj_inventory.currentBaitSlot)) {
			if (position_meeting(x, y, obj_inventory.currentBaitSlot)) {
				obj_inventory.equipBait(itemData);
			}
		}
	}
	
	
	
	instance_destroy();
}