_load_password_game_over_strings:
	LDA password_game_over_strings_index, X
	TAX
	LDA password_game_over_strings, X
	STA aobject_ppu_address
	INX
	LDA password_game_over_strings, X
	STA aobject_ppu_address + 1
	INX
	LDA password_game_over_strings, X
	STA z:zobject_tiles_update_size
	INX
	LDY #$00

@loop:
	LDA password_game_over_strings, X
	STA aobject_ppu_data, Y
	INX
	INY
	CPY z:zobject_tiles_update_size
	BNE @loop
	RTS
