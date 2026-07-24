_staff_roll:
	LDA z:znmi_frame
	AND #%00000011
	BNE @skip
	LDX aobject_frameset_upper_timer
	LDA aobject_frameset_lower_timer
	TAY
	CMP staff_roll_1_string_length, X
	BEQ @done
	CLC
	ADC staff_roll_1_string_index, X
	TAX
	LDA staff_roll_1_string_1, X
	STA aobject_ppu_data
	INC z:zobject_tiles_update_size
	INC aobject_ppu_address + 1
	INC aobject_frameset_lower_timer
	BNE @skip

@done:
	LDA aobject_frameset_upper_timer
	AND #%00000001
	BNE @skip
	INC aobject_frameset_upper_timer
	LDA #$00
	STA aobject_frameset_lower_timer
	LDA #$25
	STA aobject_ppu_address
	LDA #$CC
	STA aobject_ppu_address + 1

@skip:
	RTS
