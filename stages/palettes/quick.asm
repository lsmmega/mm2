;frames setting.
	.BYTE 0 ;frames total usage.
	.BYTE 0 ;anime frames.

;soild background palettes. 
	.BYTE black, white_cyan,   light_gray,   light_cyan
	.BYTE black, pale_orange,  white_orange, dark_orange
	.BYTE black, white_yellow, light_red,    dark_orange
	.BYTE black, white_yellow, black,        white_cyan

;soild object palettes.
	.BYTE black, black, white_cyan, light_azure
	.BYTE black, black, white,      pale_yellow
	.BYTE black, black, black,      black
	.BYTE black, black, black,      black

;anime background palettes. (unused)
;1
	.BYTE black, white_cyan,   light_gray,   light_cyan
	.BYTE black, white_orange, white_orange, dark_orange
	.BYTE black, white_yellow, light_red,    dark_orange
	.BYTE black, white_yellow, black,        white_cyan

;2
	.BYTE black, white_cyan,   light_gray,   light_cyan
	.BYTE black, pale_orange,  white_orange, dark_orange
	.BYTE black, white_yellow, light_red,    dark_orange
	.BYTE black, black,        white_yellow, white_cyan

;3
	.BYTE black, black, black, black
	.BYTE black, black, black, black
	.BYTE black, black, black, black
	.BYTE black, black, black, black

;4
	.BYTE black, black, black, black
	.BYTE black, black, black, black
	.BYTE black, black, black, black
	.BYTE black, black, black, black