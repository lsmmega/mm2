_init_miscellaneous_ram:
	LDA #$00
	STA z:zscreen_xcoord
	STA z:zscreen_id
	STA z:zscreen_ycoord
	STA z:zscreen_ycoord_fraction
	STA z:zmecha_dragon_ycoord_fraction
	STA z:zmecha_dragon_ycoord
	STA z:zmecha_dragon_xcoord_fraction
	STA z:zmecha_dragon_xcoord
	STA z:zmecha_dragon_screen
	STA ano_of_palette
	STA apalette_animation_frame
	RTS
