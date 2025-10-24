;heatman palette init
	;     number of background animation palette(s), frame(s)
	.BYTE 3, 6

;background
	.BYTE black, pale_red,  white_red,  light_rose
	.BYTE black, pale_gray, light_gray, dark_gray
	.BYTE black, light_red, dark_rose,  dark_orange
	.BYTE black, pale_red,  white_red,  light_red

;sprites
	.BYTE black, black, white_cyan,       light_azure
	.BYTE black, black, white_gray,       pale_yellow
	.BYTE black, black, light_azure,      pale_gray
	.BYTE black, black, white_chartreuse, pale_orange

;background animation palette(s)
;1
	.BYTE black, pale_red,  white_red,  light_rose
	.BYTE black, pale_gray, light_gray, dark_gray
	.BYTE black, light_red, dark_rose,  dark_orange
	.BYTE black, pale_red,  white_red,  light_red

;2
	.BYTE black, pale_red,  white_red,  light_rose
	.BYTE black, pale_gray, light_gray, dark_gray
	.BYTE black, light_red, dark_rose,  dark_orange
	.BYTE black, white_red, light_red,  pale_red

;3
	.BYTE black, pale_red,  white_red,  light_rose
	.BYTE black, pale_gray, light_gray, dark_gray
	.BYTE black, light_red, dark_rose,  dark_orange
	.BYTE black, light_red, pale_red,   white_red

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
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF

;wily1 palette init
	;     number of background animation palette(s), frame(s)
	.BYTE 0, 0

;background
	.BYTE black, white_gray,  light_gray,   dark_cyan
	.BYTE black, light_cyan,  dark_cyan,    dark_cyan
	.BYTE black, pale_yellow, white_orange, dark_orange
	.BYTE black, white_cyan,  light_spring, dark_cyan

;sprites
	.BYTE black, black, white_cyan,       light_azure
	.BYTE black, black, white_gray,       pale_yellow
	.BYTE black, black, light_azure,      pale_gray
	.BYTE black, black, white_chartreuse, pale_orange

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
