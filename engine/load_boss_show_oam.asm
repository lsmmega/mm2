_load_boss_show_oam:
	LDX z:zcurrent_stage
	INC aobject_frameset_lower_timer
	LDA aobject_frameset_lower_timer
	CMP boss_show_frames, X
	BCC @continue
	LDA #$00
	STA aobject_frameset_lower_timer
	INC aobject_frameset_upper_timer
	LDA boss_show_frameset_length, X
	CMP aobject_frameset_upper_timer
	BCS @continue
	STA aobject_frameset_upper_timer

@continue:
	LDA boss_show_frameset_index, X
	CLC
	ADC aobject_frameset_upper_timer
	TAX
	LDY boss_show_data_frameset, X
	LDA boss_show_oam_sprites_lo_pointers, Y
	STA z:z08
	LDA boss_show_oam_sprites_hi_pointers, Y
	STA z:z09
	LDY #$00
	LDA ($08), Y
	STA z:z00
	INY
	LDX #$00

@loop:
	CLC
	LDA aobject_ycoord
	ADC (z08), Y
	STA aoam_y, X
	INY
	INX
	LDA (z08), Y
	STA aoam_y, X
	INY
	INX
	LDA (z08), Y
	STA aoam_y, X
	INY
	INX
	CLC
	LDA aobject_xcoord
	ADC (z08), Y
	STA aoam_y, X
	INX
	INY
	DEC z:z00
	BNE @loop
	RTS
