draw_set_font(fnt_dialogue)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_colour(c_white)
draw_self()

var len = string_length(text[textCurrent])
if(charCurrent < len){
	charCurrent += charSpeed
}

var str = string_copy(text[textCurrent],1,charCurrent)
draw_text(textX,textY, str)