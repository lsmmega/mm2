boss_show_init_palettes:
	.BYTE black, black, black,     black
	.BYTE black, black, pale_gray, pale_yellow

boss_show_boss_oam_palettes:
;heatman
	.BYTE black, black, white_yellow, light_rose
	.BYTE black, black, white_yellow, light_rose

;airman
	.BYTE black, black, white_yellow, light_azure
	.BYTE black, black, white_yellow, light_azure

;woodman
	.BYTE black, black, pale_gray, white_chartreuse
	.BYTE black, black, pale_red,  light_orange

;bubbleman
	.BYTE black, black, pale_gray, light_chartreuse
	.BYTE black, black, pale_gray, light_chartreuse

;quickman
	.BYTE black, black, pale_gray,    white_yellow
	.BYTE black, black, white_yellow, light_rose

;flashman
	.BYTE black, pale_gray, pale_gray, white_yellow
	.BYTE black, black,     pale_gray, light_blue

;metalman
	.BYTE black, black, pale_gray,    light_rose
	.BYTE black, black, white_yellow, light_rose

;crashman
	.BYTE black, black, pale_gray, pale_gray
	.BYTE black, black, pale_gray, light_red

boss_show_fade_out_palettes:
	.BYTE dark_gray,    dark_gray
	.BYTE dark_orange,  light_gray
	.BYTE light_orange, white_gray
	.BYTE light_orange, white_gray
	.BYTE light_orange, white_gray
	.BYTE light_orange, white_gray
	.BYTE light_orange, white_gray
	.BYTE light_orange, white_gray
