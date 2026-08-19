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

_divide_fraction:
	LDA #$00
	STA z:z11
	STA z:z10
	LDA z:z0B
	ORA z:z0A
	ORA z:z0D
	ORA z:z0C
	BNE @nz
	STA z:z0F
	STA z:z0E
	RTS

@nz:
	LDY #$10

@loop:
	ASL z:z10
	ROL z:z0A
	ROL z:z0B
	ROL z:z11
	SEC
	LDA z:z0B
	SBC z:z0C
	TAX
	LDA z:z11
	SBC z:z0D
	BCC @mod
	STX z:z09
	STA z:z11
	INC z:z10

@mod:
	DEY
	BNE @loop
	LDA z:z0A
	STA z:z0F
	LDA z:z10
	STA z:z0E
	RTS
