_ending_oam:
	LDY z:z01
	LDA oam_ending_lo_pointers, Y
	STA z:z08
	LDA oam_ending_hi_pointers, Y
	STA z:z09
	LDY #$00
	LDA (z08), Y
	STA z:z02
	INY
	LDX #$00

@loop_2:
	LDA #$04
	STA z:z01

@loop_1:
	LDA (z08), Y
	STA aoam_y, X
	INY
	INX
	DEC z:z01
	BNE @loop_1
	DEC z:z02
	BNE @loop_2
	STX z:z00
	RTS
