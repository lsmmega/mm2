_get_weapon_one_line:
	LDA #$24
	STA aobject_ppu_address
	LDA #$CD
	STA aobject_ppu_address + 1
	LDA #$94
	STA aobject_ppu_data
	INC z:zobject_tiles_update_size
	RTS
