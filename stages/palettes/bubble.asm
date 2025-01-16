;frames setting.
	.BYTE 3 ;frames total usage.
	.BYTE 4 ;anime frames.

;soild background palettes. 
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white,           light_gray,  black
	.BYTE black,       light_azure,     light_azure, light_azure
	.BYTE black,       white,           white_azure, light_azure

;soild object palettes.
	.BYTE light_azure, black, white_cyan,       light_azure
	.BYTE black,       black, white,            pale_yellow
	.BYTE black,       black, white_chartreuse, pale
	.BYTE black,       black, light_rose,       pale

;anime background palettes.
;1
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white,           light_gray,  black
	.BYTE black,       light_azure,     light_azure, light_azure
	.BYTE black,       white,           white_azure, light_azure

;2
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white,           light_gray,  black
	.BYTE black,       light_azure,     light_azure, light_azure
	.BYTE black,       white_azure,     light_azure, white

;3
	.BYTE light_azure, pale_chartreuse, white_green, dark_spring
	.BYTE black,       white,           light_gray,  black
	.BYTE black,       light_azure,     light_azure, light_azure
	.BYTE black,       light_azure,     white,       white_azure