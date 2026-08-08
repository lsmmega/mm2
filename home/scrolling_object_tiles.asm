_scrolling_object_tiles:
	LDA z:zFD
	CMP #$60
	BCC @do
	RTS

@do:
	LDA z:zcurrent_bankswitch
	PHA
	LDA z:zFD
	AND #%11110000
	LSR
	LSR
	LSR
	PHA
	LSR
	CLC
	ADC #$0A
	STA aobject_ppu_address
	LDA z:zFD
	ASL
	ASL
	ASL
	ASL
	STA aobject_ppu_address + 1
	STA z:z08
	LDA z:zcurrent_stage
	AND #%00000111
	JSR _bankswitch
	LDX z:zFE
	JSR _object_palette
	CLC
	PLA
	ADC stage_object_index, X
	TAX
	LDA stage_sprites_tiles_set, X
	STA z:z09
	LDA stage_sprites_tiles_set + 1, X
	JSR _bankswitch
	LDY #$1F

@loop:
	LDA (z08), Y
	STA aobject_ppu_data, Y
	DEY
	BPL @loop
	LDA #$20
	STA z:zobject_tiles_update_size
	INC z:zFD
	INC z:zFD
	PLA
	JSR _bankswitch
	RTS
