_get_weapon_item_abbr:
	JSR _get_weapon_8_frames
	JSR _get_weapon_one_line
	JSR _get_weapon_8_frames
	INC aobject_ppu_address + 1
	LDX z:zcurrent_stage
	LDA aobject_flag
	STA aobject_ppu_data
	INC z:zobject_tiles_update_size
	JSR _get_weapon_8_frames
	JSR _get_weapon_one_line
	INC aobject_ppu_address + 1
	INC aobject_ppu_address + 1
	JSR _nmi_wait_0d
	RTS
