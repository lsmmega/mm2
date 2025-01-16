;frames setting.
	.BYTE 0 ;frames total usage.
	.BYTE 0 ;anime frames.

;soild background palettes. 
	.BYTE black, light_gray, light_magenta, dark_violet
	.BYTE black, black,      dark_blue,     black
	.BYTE black, white,      light_gray,    dark_gray
	.BYTE black, white,      white_azure,   light_azure

;soild object palettes.
	.BYTE black, black, white_cyan,       light_azure
	.BYTE black, black, white,            pale_yellow
	.BYTE black, black, white_chartreuse, pale
	.BYTE black, black, light_rose,       pale

;anime background palettes.
;1
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white,           light_gray,  dark_orange
	.BYTE black,       white,           light_rose,  black
	.BYTE black,       white,           white_azure, light_azure

;2
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white,           light_gray,  dark_orange
	.BYTE black,       white,           light_rose,  black
	.BYTE black,       white_azure,     light_azure, white

;3
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white,           light_gray,  dark_orange
	.BYTE black,       white,           light_rose,  black
	.BYTE black,       light_azure,     white,       white_azure