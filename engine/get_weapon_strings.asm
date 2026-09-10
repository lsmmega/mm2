_get_weapon_strings:
	STY z:z00
	ASL
	ASL
	ASL
	ASL
	TAY
	LDA #$00
	ADC #$00
	STA z:zopening_subtitle_msb_hi
	LDA #<get_weapon_strings
	STA z:zopening_subtitle_pointer
	LDA #>get_weapon_strings
	CLC
	ADC z:zopening_subtitle_msb_hi
	STA z:zopening_subtitle_pointer + 1
	LDA (zopening_subtitle_pointer), Y
	STA aobject_ppu_address
	TYA
	CLC
	ADC #$01
	TAY
	LDA z:zopening_subtitle_pointer + 1
	ADC #$00
	STA z:zopening_subtitle_pointer + 1
	LDA (zopening_subtitle_pointer), Y
	STA aobject_ppu_address + 1
	TYA
	CLC
	ADC #$01
	TAY
	LDA z:zopening_subtitle_pointer + 1
	ADC #$00
	STA z:zopening_subtitle_pointer + 1
	STY z:zFE
	LDA #$0E
	STA z:zFD

@loop:
	JSR _get_weapon_8_frames
	LDY z:zFE
	CPY #$F7
	BNE @not_item_line
	LDA aobject_flag
	BNE @nz

@not_item_line:
	LDA (zopening_subtitle_pointer), Y

@nz:
	STA aobject_ppu_data
	INC z:zobject_tiles_update_size
	INC aobject_ppu_address + 1
	LDA z:zFE
	CLC
	ADC #$01
	STA z:zFE
	LDA z:zopening_subtitle_pointer + 1
	ADC #$00
	STA z:zopening_subtitle_pointer + 1
	DEC z:zFD
	BNE @loop
	LDY z:z00
	JSR _nmi_wait_0d
	RTS
