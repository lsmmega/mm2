;frames setting.
	.BYTE 0 ;frames total usage.
	.BYTE 0 ;anime frames.

;soild background palettes. 
	.BYTE black, white_chartreuse, light_chartreuse, white_cyan
	.BYTE black, white_yellow,     light_yellow,     white_cyan
	.BYTE black, white_orange,     light_orange,     dark_orange
	.BYTE black, dark_yellow,      white_cyan,       light_blue

;soild object palettes.
	.BYTE black, black, white_cyan, light_azure
	.BYTE black, black, white,      pale_yellow
	.BYTE black, black, black,      black
	.BYTE black, black, black,      black

;anime background palettes. (unused)
;1
	.BYTE black, white_rose,   light_rose,   white_cyan
	.BYTE black, white_yellow, light_yellow, white_cyan
	.BYTE black, white_orange, light_orange, dark_orange
	.BYTE black, dark_yellow,  white_cyan,   light_blue

;2
	.BYTE black, white_red,    light_red,    white_cyan
	.BYTE black, white_yellow, light_yellow, white_cyan
	.BYTE black, white_orange, light_orange, dark_orange
	.BYTE black, dark_yellow,  white_cyan,   light_blue