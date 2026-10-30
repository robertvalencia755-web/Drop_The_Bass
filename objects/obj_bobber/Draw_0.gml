// --- 1. DRAW FISHING LINE ---
if (instance_exists(obj_player)) {
	// Starting point (rod tip on player)
	// You can adjust obj_player.rodOffsetX / rodOffsetY in obj_player's Create event
	var rod_tip_x = obj_player.x + (variable_instance_exists(obj_player, "rodOffsetX") ? obj_player.rodOffsetX : 0);
	var rod_tip_y = obj_player.y + (variable_instance_exists(obj_player, "rodOffsetY") ? obj_player.rodOffsetY : 0);
	
	// Ending point (attachment point on bobber)
	var bobber_attach_x = x + bobberOffsetX;
	var bobber_attach_y = y + bobberOffsetY;
	
	// Visual line settings
	var line_color = c_white;
	var line_alpha = 0.8;
	var line_width = 1;
	
	// Draw straight line (Option A)
	draw_set_color(line_color);
	draw_set_alpha(line_alpha);
	draw_line_width(rod_tip_x, rod_tip_y, bobber_attach_x, bobber_attach_y, line_width);
	
	// Reset draw state
	draw_set_alpha(1.0);
	draw_set_color(c_white);
}

// --- 2. DRAW BOBBER ---
// draw_self() must be called in a Draw event so the bobber sprite continues to render
draw_self();
