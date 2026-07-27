_divide_mod:
	LDA #$00
	STA z:z03
	STA z:z04
	LDA z:z01
	ORA z:z02
	BNE @nz
	STA z:z03
	RTS

@nz:
	LDY #$08

@loop:
	ASL z:z03
	ROL z:z01
	ROL z:z04
	SEC
	LDA z:z04
	SBC z:z02
	BCC @mod
	STA z:z04
	INC z:z03

@mod:
	DEY
	BNE @loop
	RTS
