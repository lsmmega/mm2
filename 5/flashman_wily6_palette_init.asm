;flashman palette init
	;     number of background animation palette(s), frame(s)
	.BYTE 3, 32

;background
	.BYTE black, white_spring, light_blue,  dark_blue
	.BYTE black, white_gray,   white_azure, light_azure
	.BYTE black, white_gray,   white_azure, light_azure
	.BYTE black, white_gray,   white_azure, light_azure

;sprites
	.BYTE black, black, white_cyan,  light_azure
	.BYTE black, black, white_gray,  pale_yellow
	.BYTE black, black, light_azure, pale_gray
	.BYTE black, black, light_rose,  white_yellow

;background animation palette(s)
;1
	.BYTE black, white_spring, light_blue,  dark_blue
	.BYTE black, pale_gray,    pale_azure,  white_cyan
	.BYTE black, white_gray,   white_azure, light_azure
	.BYTE black, white_gray,   white_azure, light_azure

;2
	.BYTE black, white_spring, light_blue,  dark_blue
	.BYTE black, white_gray,   white_azure, light_azure
	.BYTE black, pale_gray,    pale_azure,  white_cyan
	.BYTE black, white_gray,   white_azure, light_azure

;3
	.BYTE black, white_spring, light_blue,  dark_blue
	.BYTE black, white_gray,   white_azure, light_azure
	.BYTE black, white_gray,   white_azure, light_azure
	.BYTE black, pale_gray,    pale_azure,  white_cyan

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

;wily6 palette init
	;     number of background animation palette(s), frame(s)
	.BYTE 0, 0

;background
	.BYTE black, white_orange, light_yellow, dark_green
	.BYTE black, black,        dark_spring,  black
	.BYTE black, white_gray,   light_gray,   dark_gray
	.BYTE black, dark_spring,  black,        dark_spring

;sprites
	.BYTE black, black, white_cyan,  light_azure
	.BYTE black, black, white_gray,  pale_yellow
	.BYTE black, black, light_azure, pale_gray
	.BYTE black, black, light_rose,  white_yellow

;background animation palette(s)
;1
	.BYTE black, white_orange, light_yellow, dark_green
	.BYTE black, black,        dark_spring,  black
	.BYTE black, white_gray,   light_gray,   dark_gray
	.BYTE black, dark_spring,  black,        dark_spring

;2
	.BYTE black, white_orange, light_yellow, dark_green
	.BYTE black, black,        dark_spring,  black
	.BYTE black, white_gray,   light_gray,   dark_gray
	.BYTE black, black,        dark_spring,  dark_spring

;3
	.BYTE black, white_orange, light_yellow, dark_green
	.BYTE black, black,        dark_spring,  black
	.BYTE black, white_gray,   light_gray,   dark_gray
	.BYTE black, dark_spring,  dark_spring,  black

;4
	.BYTE black, white_orange, light_yellow, dark_green
	.BYTE black, black,        dark_spring,  black
	.BYTE black, white_gray,   light_gray,   dark_gray
	.BYTE black, dark_spring,  dark_spring,  black

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
