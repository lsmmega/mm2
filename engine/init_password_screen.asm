_init_password_screen:
	STA z:zscreen_id
	LDA #$00
	STA z:zscreen_xcoord
	STA z:zscreen_ycoord
	LDX #$21

@loop:
	LDA password_animation_rate, X
	STA ano_of_palette, X
	DEX
	BPL @loop
	JSR _init_miscellaneous_sprites
	JSR _enable_nmi
	RTS
