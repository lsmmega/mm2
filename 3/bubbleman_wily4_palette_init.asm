;bubbleman palette init
	;     number of background animation palette(s), frame(s)
	.BYTE 3, 4

;background
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white_gray,      light_gray,  black
	.BYTE black,       light_azure,     light_azure, light_azure
	.BYTE black,       white_gray,      white_azure, light_azure

;sprites
	.BYTE light_azure, black, white_cyan,       light_azure
	.BYTE black,       black, white_gray,       pale_yellow
	.BYTE black,       black, white_chartreuse, pale_gray
	.BYTE black,       black, light_rose,       pale_gray

;background animation palette(s)
;1
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white_gray,      light_gray,  black
	.BYTE black,       light_azure,     light_azure, light_azure
	.BYTE black,       white_gray,      white_azure, light_azure

;2
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white_gray,      light_gray,  black
	.BYTE black,       light_azure,     light_azure, light_azure
	.BYTE black,       white_azure,     light_azure, white_gray

;3
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white_gray,      light_gray,  black
	.BYTE black,       light_azure,     light_azure, light_azure
	.BYTE black,       light_azure,     white_gray,  white_azure

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

;wily4 palette init
	;     number of background animation palette(s), frame(s)
	.BYTE 0, 0

;background
	.BYTE black, light_gray, light_magenta, dark_violet
	.BYTE black, black,      dark_blue,     black
	.BYTE black, white_gray, light_gray,    dark_gray
	.BYTE black, white_gray, white_azure,   light_azure

;sprites
	.BYTE black, black, white_cyan,       light_azure
	.BYTE black, black, white_gray,       pale_yellow
	.BYTE black, black, white_chartreuse, pale_gray
	.BYTE black, black, light_rose,       pale_gray

;background animation palette(s)
;1
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white_gray,      light_gray,  dark_orange
	.BYTE black,       white_gray,      light_rose,  black
	.BYTE black,       white_gray,      white_azure, light_azure

;2
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white_gray,      light_gray,  dark_orange
	.BYTE black,       white_gray,      light_rose,  black
	.BYTE black,       white_azure,     light_azure, white_gray

;3
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white_gray,      light_gray,  dark_orange
	.BYTE black,       white_gray,      light_rose,  black
	.BYTE black,       light_azure,     white_gray,  white_azure

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
