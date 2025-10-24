;quickman palette init
	;     number of background animation palette(s), frame(s)
	.BYTE 0, 0

;background
	.BYTE black, white_cyan,   light_gray,   light_cyan
	.BYTE black, pale_orange,  white_orange, dark_orange
	.BYTE black, white_yellow, light_red,    dark_orange
	.BYTE black, white_yellow, black,        white_cyan

;sprites
	.BYTE black, black, white_cyan, light_azure
	.BYTE black, black, white_gray, pale_yellow
	.BYTE black, black, black,      black
	.BYTE black, black, black,      black

;background animation palette(s)
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

;wily5 palette init
	;     number of background animation palette(s), frame(s)
	.BYTE 4, 6

;background
	.BYTE black, pale_gray,        pale_blue,       white_blue
	.BYTE black, pale_orange,      white_orange,    light_orange
	.BYTE black, light_chartreuse, dark_chartreuse, white_azure
	.BYTE black, dark_azure,       dark_azure,      dark_azure

;sprites
	.BYTE black, black, white_cyan, light_azure
	.BYTE black, black, white_gray, pale_yellow
	.BYTE black, black, black,      black
	.BYTE black, black, black,      black

;background animation palette(s)
;1
	.BYTE black, pale_gray,        pale_blue,       white_blue
	.BYTE black, pale_orange,      white_orange,    light_orange
	.BYTE black, light_chartreuse, dark_chartreuse, white_azure
	.BYTE black, dark_azure,       dark_azure,      dark_azure

;2
	.BYTE black, pale_gray,        pale_blue,       white_blue
	.BYTE black, pale_orange,      white_orange,    light_orange
	.BYTE black, light_chartreuse, dark_chartreuse, white_azure
	.BYTE black, dark_azure,       white_azure,     dark_azure

;3
	.BYTE black, pale_gray,        pale_blue,       white_blue
	.BYTE black, pale_orange,      white_orange,    light_orange
	.BYTE black, light_chartreuse, dark_chartreuse, white_azure
	.BYTE black, dark_azure,       dark_azure,      white_azure

;4
	.BYTE black, pale_gray,        pale_blue,       white_blue
	.BYTE black, pale_orange,      white_orange,    light_orange
	.BYTE black, light_chartreuse, dark_chartreuse, white_azure
	.BYTE black, dark_azure,       white_azure,     white_azure

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
