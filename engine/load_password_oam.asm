_load_password_oam:
	LDX aobject_frameset_upper_timer
	LDA password_oamycoord, X
	STA z:z09
	LDA password_oamxcoord, X
	STA z:z08
	LDX #$0F

@loop_1:
	CLC
	LDA password_cursor_oam, X
	ADC z:z08
	STA aoam_y + $30, X
	DEX
	LDA password_cursor_oam, X
	STA aoam_y + $30, X
	DEX
	LDA password_cursor_oam, X
	STA aoam_y + $30, X
	DEX
	CLC
	LDA password_cursor_oam, X
	ADC z:z09
	STA aoam_y + $30, X
	DEX
	BPL @loop_1
	LDA z:znmi_frame
	LSR
	AND #%00000111
	TAX
	LDA password_oam_fade_palettes, X
	STA acurrent_background_palette + $16
	CLC
	LDA aobject_frameset_lower_timer
	ADC #$24 ;count
	STA aoam_tiles + $2C
	LDX #$00
	LDY #$40

@loop_2:
	LDA aobject_flag, X
	BNE @exist
	LDA #$F8
	BNE @hidden

@exist:
	LDA #$3F ;ball

@hidden:
	STA aoam_tiles, Y
	INY
	INY
	INY
	INY
	INX
	CPX #$19
	BNE @loop_2
	RTS
