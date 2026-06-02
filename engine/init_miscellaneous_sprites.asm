_init_miscellaneous_sprites:
	LDX #$00
	LDA #$F8

@loop:
	STA oam_hi_addr << 8, X
	INX
	BNE @loop
	RTS
