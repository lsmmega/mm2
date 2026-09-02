_init_password_oam:
	LDX #$00
	LDY #$40

@loop:
	CLC
	LDA password_oamycoord, X
	ADC #$04
	STA aoam_y, Y
	INY
	LDA #$0F
	STA aoam_tiles - 1, Y
	INY
	LDA #oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	STA aoam_attributes - 2, Y
	INY
	CLC
	LDA password_oamxcoord, X
	ADC #$04
	STA aoam_x - 3, Y
	INY
	INX
	CPX #$19
	BNE @loop
	RTS
