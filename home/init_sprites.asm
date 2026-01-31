_init_sprites:
	LDA #$F8
	LDX #$00

@loop:
	STA oam_hi_addr << 8, X
	INX
	BNE @loop
	RTS
