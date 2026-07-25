_credit_init:
	LDA #>credit_string_1
	STA z:zcredit_pointer + 1
	LDA #<credit_string_1
	STA z:zcredit_pointer
	RTS

_credit:
	CLC
	LDA z:zscreen_ycoord_fraction
	ADC #$78
	STA z:zscreen_ycoord_fraction
	LDA z:zscreen_ycoord
	ADC #$00
	CMP #$F0
	BCC @nz
	LDA #$00

@nz:
	STA z:zscreen_ycoord
	AND #%00000111
	BNE @n8
	SEC
	LDA z:zscreen_ycoord
	STA z:z01
	JSR @transfer
	LDX #$20
	STX z:zobject_tiles_update_size
	DEX
	LDA #$00

@loop_1:
	STA aobject_ppu_data, X
	DEX
	BPL @loop_1
	RTS

@n8:
	LDX aobject_frameset_upper_timer
	LDA z:zscreen_ycoord
	CMP credit_screen_ycoord, X
	BNE @skip
	LDA z:zscreen_ycoord
	AND #%11111000
	STA z:z01
	JSR @transfer
	LDA credit_ppu_ycoord, X
	STA aobject_ppu_address + 1
	LDA credit_string, X
	STA z:zobject_tiles_update_size
	LDY #$00
	LDX #$00

@loop_2:
	LDA (zcredit_pointer), Y
	STA aobject_ppu_data, X
	CLC
	LDA z:zcredit_pointer
	ADC #$01
	STA z:zcredit_pointer
	LDA z:zcredit_pointer + 1
	ADC #$00
	STA z:zcredit_pointer + 1
	INX
	CPX z:zobject_tiles_update_size
	BNE @loop_2
	INC aobject_frameset_upper_timer

@skip:
	RTS

@transfer:
	LDA #$08
	STA z:z00
	LDA z:z01
	ASL
	ROL z:z00
	ASL
	ROL z:z00
	STA aobject_ppu_address + 1
	LDA z:z00
	STA aobject_ppu_address
	RTS
