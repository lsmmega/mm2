_object_tile_update:
	LDA aobject_ppu_address
	STA PPU_ADDRESS
	LDA aobject_ppu_address + 1
	STA PPU_ADDRESS
	LDX #$00

@loop:
	LDA aobject_ppu_data, X
	STA PPU_DATA
	INX
	DEC z:zobject_tile_update_size
	BNE @loop
	RTS
