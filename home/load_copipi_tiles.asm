_load_copipi_tiles:
	bankswitch <.BANK (_load_copipi_chr)
	LDX #$1F

@loop:
	LDA _load_copipi_chr, X
	STA aobject_ppu_data, X
	DEX
	BPL @loop
	LDA #$08
	STA aobject_ppu_address
	LDA #$00
	STA aobject_ppu_address + 1
	LDA #$20
	STA z:zobject_tiles_update_size
	bankswitch $0D
	RTS
