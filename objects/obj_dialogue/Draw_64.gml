//sprite needs to be ninesliced for this to work
draw_sprite_stretched(spr_dialogue, 0, x1, y1, x2 - x1, y2 - y1)

draw_set_font(fnt_dialogue)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_colour(c_white)

var _print = string_copy(text, 1, textProgress)
draw_text((x1+x2)/2,y1+8, _print)
