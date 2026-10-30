var len = string_length(text[textCurrent])
if(charCurrent > len){
	charCurrent = len
}
else{
	textCurrent += 1
	if(textCurrent > textLast){
		instance_destroy()
	}else{
		text[textCurrent] = stringWrap(text[textCurrent],textWidth)
		charCurrent = 0
	}
}