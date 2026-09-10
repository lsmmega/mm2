_get_weapon_item:
	LDA #black
	STA acurrent_background_palette + $06
	STA acurrent_background_palette + $07
	LDX #$02

@loop_1:
	LDA get_weapon_item_palettes, X
	STA acurrent_background_palette + $1D, X
	DEX
	BPL @loop_1
	JSR _init_miscellaneous_sprites
	JSR _init_get_weapon_strings
	LDA #$7D
	STA z:zFD

@loop_2:
	LDX #$0F
	LDA z:zFD
	AND #%00001000
	BEQ @8_frames
	LDX #$15

@8_frames:
	STX acurrent_background_palette + $10
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_2
	LDA #$07
	STA aobject_pointer
	JSR _home_ending_oam_with_object
	LDA #$0A
	JSR _get_weapon_strings
	LDA #$0B
	JSR _get_weapon_strings
	JSR _get_weapon_timer
	JSR _init_get_weapon_strings
	LDX z:zcurrent_stage
	LDA got_item_flag, X
	LSR
	ORA #$A0
	STA aobject_flag
	INC aobject_flag
	LDA #$0F
	JSR _get_weapon_strings
	LDA #$0C
	JSR _get_weapon_strings
	LDA #$0D
	JSR _get_weapon_strings
	LDA #$0E
	JSR _get_weapon_strings
	JSR _get_weapon_timer
	JSR _init_get_weapon_strings
	JSR _init_miscellaneous_sprites
	LDA #$06
	STA aobject_pointer
	JSR _home_ending_oam_with_object
	JSR _get_weapon_item_abbr
	LDA #$08
	JSR _get_weapon_strings
	LDA #$09
	JSR _get_weapon_strings
	LDA aobject_flag
	AND #%00001111
	CLC
	ADC #$0F
	JSR _get_weapon_strings
	LDA #$7D
	STA z:zFD

@loop_3:
	LDX #$12
	LDA z:zFD
	AND #%00000001
	BNE @odd
	LDX z:zcurrent_stage
	INX
	TXA
	ASL
	TAX

@odd:
	LDA get_weapon_palettes, X
	STA acurrent_background_palette + $12
	STA acurrent_background_palette + $1A
	LDA get_weapon_palettes + 1, X
	STA acurrent_background_palette + $13
	STA acurrent_background_palette + $1B
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_3
	RTS
