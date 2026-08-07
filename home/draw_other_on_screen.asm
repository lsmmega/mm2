_draw_other_on_screen:
	LDX z:zdraw_other_flag
	LDY #$08
	LDA z:z09
	AND #%00000001
	BEQ @even
	LDY #$09

@even:
	STY z:z0B
	LDA z:z0A
	AND #%11111000
	ASL
	ROL z:z0B
	ASL
	ROL z:z0B
	STA adraw_other_ppu_address + 7, X
	LDA z:z08
	LSR
	LSR
	LSR
	ORA adraw_other_ppu_address + 7, X
	STA adraw_other_ppu_address + 7, X
	LDA z:z0B
	STA aobject_ppu_address, X
	RTS

_draw_other_on_screen_attributes:
	PHA
	LDA z:z08
	PHA
	LDX z:zdraw_other_flag
	LDA z:z0A
	AND #%11100000
	LSR
	LSR
	STA z:z0B
	ASL z:z08
	ROL
	ASL z:z08
	ROL
	ASL z:z08
	ROL
	ORA z:z0B
	ORA #%11000000
	STA adraw_other_ppu_address + 19, X
	LDY #$23
	LDA z:z09
	AND #%00000001
	BEQ @even
	LDY #$27

@even:
	TYA
	STA adraw_other_ppu_address + 13, X
	LDY #$00
	PLA
	AND #%00010000
	BEQ @left
	INY

@left:
	LDA z:z0A
	AND #%00010000
	BEQ @top
	INY
	INY

@top:
	PLA
	AND @attirbute_table, Y
	STA adoor_attribute, X
	LDA @attirbute_table, Y
	EOR #%11111111
	STA adoor_attribute_bitwise, X
	RTS

@attirbute_table:
	.BYTE topleft_palette_3
	.BYTE topright_palette_3
	.BYTE bottomleft_palette_3
	.BYTE bottomright_palette_3
