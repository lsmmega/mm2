_init_stage:
	LDA z:zcurrent_stage
	AND #%00000111
	JSR _bankswitch
	LDA #<_tiles_init
	STA z:z0A
	LDA #>_tiles_init
	STA z:z0B
	LDA z:zcurrent_stage
	AND #%00001000
	BEQ @not_wily
	INC z:z0B

@not_wily:
	LDY #$00
	LDA (z0A), Y
	STA z:z00
	LDA #$00
	STA PPU_ADDRESS
	STA PPU_ADDRESS
	STA z:z08
	INY
	STY z:z01

@loop_3:
	LDY z:z01
	LDA (z0A), Y
	STA z:z09
	INY
	LDA (z0A), Y
	STA z:z02
	INY
	LDA (z0A), Y
	INY
	STY z:z01
	JSR _bankswitch

@loop_2:
	LDY #$00

@loop_1:
	LDA (z08), Y
	STA PPU_DATA
	INY
	BNE @loop_1
	INC z:z09
	DEC z:z02
	BNE @loop_2
	LDA z:zcurrent_stage
	AND #%00000111
	JSR _bankswitch
	DEC z:z00
	BNE @loop_3
	INC z:z0B
	INC z:z0B
	LDY #$61

@loop_4:
	LDA (z0A), Y
	STA ano_of_palette, Y
	DEY
	BPL @loop_4
	JSR _palette_update
	bankswitch $0E
	RTS
