_draw_menu:
	LDX z:zscreen_update_flag
	LDY #$20
	LDA z:z09
	AND #%00000001
	BEQ @even
	LDY #$24

@even:
	STY z:z0B
	LDA z:z08
	LSR
	LSR
	PHA
	LSR
	AND #%00000011
	ORA z:z0B
	STA ascreen_ppu_horizontal_address, X
	PLA
	PHA
	ROR
	AND #%11111100
	STA ascreen_ppu_horizontal_address + 4, X
	LDA z:z0B
	ORA #%00000011
	STA ascreen_ppu_horizontal_attribute_address, X
	PLA
	STA z:z0A
	LSR
	LSR
	LSR
	ASL z:z0A
	ASL z:z0A
	ASL z:z0A
	ORA z:z0A
	ORA #%11000000
	STA ascreen_ppu_horizontal_attribute_address + 4, X
	RTS
