_load_boss_tile:
	JSR _bankswitch
	LDY #$1F

@loop:
	LDA (z08), Y
	STA aobject_ppu_data, Y
	DEY
	BPL @loop
	LDA #$20
	STA z:zobject_tile_update_size
	bankswitch $0D
	RTS
