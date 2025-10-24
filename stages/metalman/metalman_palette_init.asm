;metalman palette init
	;     number of background animation palette(s), frame(s)
	.BYTE 4, 3

;background
	.BYTE black, pale_yellow, white_green, light_orange
	.BYTE black, light_gray,  light_gray,  light_rose
	.BYTE black, light_gray,  dark_rose,   white_orange
	.BYTE black, dark_orange, dark_orange, black

;sprites
	.BYTE black, black, white_cyan, light_azure
	.BYTE black, black, white_gray, pale_yellow
	.BYTE black, black, dark_gray,  pale_gray
	.BYTE black, black, light_rose, white_orange

;background animation palette(s)
;1
	.BYTE black, pale_yellow, white_green,  light_orange
	.BYTE black, light_gray,  light_gray,   light_rose
	.BYTE black, light_gray,  white_orange, dark_rose
	.BYTE black, dark_orange, dark_orange,  black

;2
	.BYTE black, pale_yellow, white_green, light_orange
	.BYTE black, light_gray,  light_gray,  light_gray
	.BYTE black, light_gray,  dark_rose,   white_orange
	.BYTE black, dark_orange, dark_orange, black

;3
	.BYTE black, pale_yellow, white_green,  light_orange
	.BYTE black, light_gray,  light_gray,   light_gray
	.BYTE black, light_gray,  white_orange, dark_rose
	.BYTE black, dark_orange, black,        dark_orange

;4
	.BYTE black, pale_yellow, white_green, light_orange
	.BYTE black, light_gray,  light_gray,  light_gray
	.BYTE black, light_gray,  dark_rose,   white_orange
	.BYTE black, dark_orange, black,       dark_orange

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF

;unused palette init
	;     number of background animation palette(s), frame(s)
	.BYTE $FF, $FF

;background
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF

;sprites
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF

;background animation palette(s)
;1
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF

;2
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF

;3
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF

;4
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $78, $EE
	.BYTE $E1, $BF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $00, $00, $E0, $BF, $E0, $BF
