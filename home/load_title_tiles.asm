_load_title_tiles:
	bankswitch <.BANK (_load_title_chr)
	LDY #$1F

@loop:
	LDA (zFE), Y
	STA aobject_ppu_data, Y
	DEY
	BPL @loop
	LDA #$20
	STA z:zobject_tiles_update_size
	bankswitch $0D
	RTS
