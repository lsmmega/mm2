;frames setting.
	.BYTE 0 ;frames total usage.
	.BYTE 0 ;anime frames.

;soild background palettes. 
	.BYTE black, white_yellow,     light_orange, light_yellow
	.BYTE black, white_chartreuse, light_yellow, dark_orange
	.BYTE black, black,            white_yellow, light_yellow
	.BYTE black, dark_green,       dark_yellow,  dark_spring

;soild object palettes.
	.BYTE black, black, white_cyan, light_azure
	.BYTE black, black, white,      pale_yellow
	.BYTE black, black, black,      black
	.BYTE black, black, black,      black

;anime background palettes. (unused)
;1
	.BYTE black, white_orange, pale_orange, pale
	.BYTE black, white_orange, light_azure, light_red
	.BYTE black, dark_gray,    light_gray,  light_red
	.BYTE black, white_orange, dark_red,    light_red

;2
	.BYTE black, white_orange, pale_orange, pale
	.BYTE black, white_orange, light_azure, light_red
	.BYTE black, light_gray,   dark_gray,   light_red
	.BYTE black, white_orange, dark_red,    light_red