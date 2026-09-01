_load_opening_subtitle:
	LDY z:zFD
	LDX #$00

@loop:
	LDA #<opening_subtitle
	STA z:zopening_subtitle_pointer
	LDA #>opening_subtitle
	CLC
	ADC z:zopening_subtitle_msb_hi
	STA z:zopening_subtitle_pointer + 1
	LDA (zopening_subtitle_pointer), Y
	STA aobject_ppu_data, X
	TYA
	CLC
	ADC #$01
	TAY
	LDA z:zopening_subtitle_msb_hi
	ADC #$00
	STA z:zopening_subtitle_msb_hi
	INX
	CPX #$1B
	BNE @loop
	STX z:zobject_tiles_update_size
	STY z:zFD
	RTS
