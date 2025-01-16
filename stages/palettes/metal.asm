;frames setting.
	.BYTE 4 ;frames total usage.
	.BYTE 3 ;anime frames.

;soild background palettes. 
	.BYTE black, pale_yellow, white_green, light_orange
	.BYTE black, light_gray,  light_gray,  light_rose
	.BYTE black, light_gray,  dark_rose,   white_orange
	.BYTE black, dark_orange, dark_orange, black

;solid object palettes.
	.BYTE black, black, white_cyan, light_azure
	.BYTE black, black, white,      pale_yellow
	.BYTE black, black, dark_gray,  pale
	.BYTE black, black, light_rose, white_orange

;anime background palettes.
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