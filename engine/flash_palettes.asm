_flash_palettes:
	LDY #$1F

@loop:
	LDA flash_stage_select_palettes_table, X
	STA acurrent_background_palette, Y
	DEX
	DEY
	BPL @loop
	RTS
