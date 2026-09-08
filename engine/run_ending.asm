_run_ending:
	JSR _init_miscellaneous_sprites
	LDA aobject_frameset_upper_timer
	CMP #$05
	BNE @not_max_1
	LDY #$04
	LDX #$30
	LDA z:zFF
	AND #%00000001
	BNE @odd_1
	LDY #$05
	LDX #black

@odd_1:
	STX acurrent_background_palette + $11
	TXA
	AND #%00001111
	STA acurrent_background_palette + $19
	JSR _home_ending_oam_without_object
	RTS

@not_max_1:
	LDA #$00
	STA aobject_xcoord
	STA aobject_ycoord
	STA aobject_screen
	STA z:z00
	INC aobject_frameset_lower_timer
	LDA aobject_frameset_lower_timer
	CMP #$10
	BNE @not_max_2
	LDA #$00
	STA aobject_frameset_lower_timer
	INC aobject_pointer
	LDA aobject_pointer
	CMP #$04
	BNE @not_max_2
	LDA #$00
	STA aobject_pointer

@not_max_2:
	LDA aobject_frameset_upper_timer
	CMP #$04
	BCC @not_max_3
	LDY aobject_pointer
	LDA z:zFF
	AND #%00000001
	BNE @odd_2
	LDY #$04

@odd_2:
	JSR _home_ending_oam_without_object
	RTS

@not_max_3:
	JSR _home_ending_oam_with_object
	LDX aobject_frameset_upper_timer
	CLC
	LDA aobject_ycoord_fraction + $01
	ADC ending_drop_ycoord_speed_fraction, X
	STA aobject_ycoord_fraction + $01
	LDA aobject_ycoord + $01
	ADC ending_drop_ycoord_speed, X
	STA aobject_ycoord + $01
	LDA z:znmi_frame
	AND #%00000111
	BNE @8_frames
	INC aobject_frameset_lower_timer + $01
	LDA aobject_frameset_lower_timer + $01
	CMP #$04
	BNE @not_max_4
	LDA #$00
	STA aobject_frameset_lower_timer + $01

@8_frames:
@not_max_4:
	LDA aobject_frameset_upper_timer
	ASL
	ASL
	ADC aobject_frameset_lower_timer + $01
	TAX
	LDA ending_oam_tiles, X
	STA z:z02
	LDA z:zFF
	BEQ @not_fade
	LDX aobject_frameset_upper_timer
	BEQ @not_fade
	DEX
	LDA z:zFF
	BEQ @not_fade
	LSR
	LSR
	LSR
	LSR
	STA z:z02
	TXA
	ASL
	ASL
	ADC z:z02
	TAX
	LDA ending_fade_oam_tiles, X
	STA z:z02

@not_fade:
	LDY z:z00
	LDX #$15

@loop:
	CLC
	LDA ending_object_ycoord, X
	ADC aobject_ycoord + $01
	STA aoam_y, Y
	INY
	LDA z:z02
	STA aoam_tiles - 1, Y
	INY
	LDA #oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	STA aoam_attributes - 2, Y
	INY
	LDA ending_object_xcoord, X
	STA aoam_x - 3, Y
	INY
	DEX
	BPL @loop
	RTS
