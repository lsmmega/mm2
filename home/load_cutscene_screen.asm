_load_cutscene_screen:
	JSR _bankswitch
	LDA #$00
	STA z:z08
	LDX #$04

@loop:
	LDA (z08), Y
	STA PPU_DATA
	INY
	BNE @loop
	INC z:z09
	DEX
	BNE @loop
	bankswitch $0D
	RTS
