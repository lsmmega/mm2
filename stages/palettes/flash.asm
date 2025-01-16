;frames setting.
	.BYTE 3  ;frames total usage.
	.BYTE 32 ;anime frames.

;soild background palettes. 
	.BYTE black, white_spring, light_blue,  dark_blue
	.BYTE black, white,        white_azure, light_azure
	.BYTE black, white,        white_azure, light_azure
	.BYTE black, white,        white_azure, light_azure

;soild object palettes.
	.BYTE black, black, white_cyan,  light_azure
	.BYTE black, black, white,       pale_yellow
	.BYTE black, black, light_azure, pale
	.BYTE black, black, light_rose,  white_yellow

;anime background palettes.
;1
	.BYTE black, white_spring, light_blue,  dark_blue
	.BYTE black, pale,         pale_azure,  white_cyan
	.BYTE black, white,        white_azure, light_azure
	.BYTE black, white,        white_azure, light_azure

;2
	.BYTE black, white_spring, light_blue,  dark_blue
	.BYTE black, white,        white_azure, light_azure
	.BYTE black, pale,         pale_azure,  white_cyan
	.BYTE black, white,        white_azure, light_azure

;3
	.BYTE black, white_spring, light_blue,  dark_blue
	.BYTE black, white,        white_azure, light_azure
	.BYTE black, white,        white_azure, light_azure
	.BYTE black, pale,         pale_azure,  white_cyan

;4
	.BYTE black, black, black, black
	.BYTE black, black, black, black
	.BYTE black, black, black, black
	.BYTE black, black, black, black