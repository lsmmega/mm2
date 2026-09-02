_title_megaman_oam:
	LDX aobject_pointer + $10
	LDA title_megaman_oam_lo_pointer, X
	STA z:z08
	LDA title_megaman_oam_hi_pointer, X
	STA z:z09
	LDY #$00
	LDA (z08), Y
	STA z:z01
	LDX z:z00
	BEQ @skip
	INY

@loop:
	CLC
	LDA aobject_ycoord + $10
	ADC (z08), Y
	STA aoam_y, X
	LDA aobject_screen + $10
	ADC #$00
	BEQ @not_hidden
	INY
	INY
	INY
	INY
	LDA #$F8
	STA aoam_y, X
	BNE @hidden

@not_hidden:
	INY
	LDA (z08), Y
	STA aoam_tiles, X
	INY
	LDA (z08), Y
	STA aoam_attributes, X
	INY
	LDA (z08), Y
	STA aoam_x, X
	INY

@hidden:
	INX
	INX
	INX
	INX
	BEQ @skip
	DEC z:z01
	BNE @loop

@skip:
	RTS
