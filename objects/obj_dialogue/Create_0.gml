text[0] = "Hello World"
text[1] = "This is a really really really long string to test text wrapping, hell yeah"

textCurrent = 0
textLast = 1
textWidth = 300
textX = 32
textY = 32

charCurrent = 1
charSpeed = 0.25

text[textCurrent] = stringWrap(text[textCurrent],textWidth)