//sprite needs to be ninesliced for this to work
draw_sprite_stretched(spr_dialogue, 0, x1, y1, x2 - x1, y2 - y1);

draw_set_font(fnt_dialogue);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_colour(c_white);

var _scale_x = display_get_gui_width() / 640;
var _scale_y = display_get_gui_height() / 360;
var _text_scale = min(_scale_x, _scale_y);

var _print = string_copy(text, 1, textProgress);
if(responses[0] != -1 && textProgress >= string_length(text)){
	for(i = 0; i < array_length(responses); i++){
		_print += "\n";
		if(i == responseSelected) _print += "> ";
		_print += responses[i];
		if(i == responseSelected) _print += " <";
	}
}

draw_text_transformed((x1 + x2) / 2, y1 + (8 * _scale_y), _print, _text_scale, _text_scale, 0);

