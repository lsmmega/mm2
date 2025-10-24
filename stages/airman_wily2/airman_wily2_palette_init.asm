;airman palette init
	;     number of background animation palette(s), frame(s)
	.BYTE 4, 16

;background
	.BYTE white_azure, white_azure, pale_azure,  pale_gray
	.BYTE black,       pale_gray,   light_rose,  black
	.BYTE black,       white_azure, white_azure, white_azure
	.BYTE black,       white_azure, white_azure, white_azure

;sprites
	.BYTE white_azure, black, white_cyan,   light_azure
	.BYTE black,       black, white_gray,   pale_yellow
	.BYTE black,       black, white_orange, pale_gray
	.BYTE black,       black, light_rose,   white_orange

;background animation palette(s)
;1
	.BYTE white_azure, white_azure, pale_azure,  pale_gray
	.BYTE black,       pale_gray,   light_rose,  black
	.BYTE black,       white_azure, white_azure, white_azure
	.BYTE black,       white_azure, white_azure, white_azure

;2
	.BYTE white_azure, pale_azure,  pale_gray,   pale_gray
	.BYTE black,       pale_gray,   light_rose,  black
	.BYTE black,       white_azure, white_azure, white_azure
	.BYTE black,       white_azure, white_azure, white_azure

;3
	.BYTE white_azure, pale_gray,   pale_gray,   pale_gray
	.BYTE black,       pale_gray,   light_rose,  black
	.BYTE black,       white_azure, white_azure, white_azure
	.BYTE black,       white_azure, white_azure, white_azure

;4
	.BYTE white_azure, pale_azure,  pale_gray,   pale_gray
	.BYTE black,       pale_gray,   light_rose,  black
	.BYTE black,       white_azure, white_azure, white_azure
	.BYTE black,       white_azure, white_azure, white_azure

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

;wily2 palette init
	;     number of background animation palette(s), frame(s)
	.BYTE 3, 4

;background
	.BYTE black, light_gray,   light_yellow, dark_yellow
	.BYTE black, black,        dark_yellow,  black
	.BYTE black, pale_magenta, light_rose,   dark_rose
	.BYTE black, pale_azure,   pale_azure,   black

;sprites
	.BYTE black, black, white_cyan,   light_azure
	.BYTE black, black, white_gray,   pale_yellow
	.BYTE black, black, white_orange, pale_gray
	.BYTE black, black, light_rose,   white_orange

;background animation palette(s)
;1
	.BYTE black, light_gray,   light_yellow, dark_yellow
	.BYTE black, black,        dark_yellow,  black
	.BYTE black, pale_magenta, light_rose,   dark_rose
	.BYTE black, pale_azure,   pale_azure,   black

;2
	.BYTE black, light_gray,   light_yellow, dark_yellow
	.BYTE black, black,        dark_yellow,  black
	.BYTE black, pale_magenta, light_rose,   dark_rose
	.BYTE black, black,        pale_azure,   pale_azure

;3
	.BYTE black, light_gray,   light_yellow, dark_yellow
	.BYTE black, black,        dark_yellow,  black
	.BYTE black, pale_magenta, light_rose,   dark_rose
	.BYTE black, pale_azure,   black,        pale_azure

;4
	.BYTE black, light_gray,   light_yellow, dark_yellow
	.BYTE black, black,        dark_yellow,  black
	.BYTE black, pale_magenta, light_rose,   dark_rose
	.BYTE black, pale_azure,   pale_azure,   black

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
