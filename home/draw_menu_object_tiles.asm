_draw_menu_object_tiles:
;x = bank, y = hiaddr
	LDA z:zFD
	STA z:z09
	LDA #$00
	LSR z:z09
	ROR
	LSR z:z09
	ROR
	LSR z:z09
	ROR
	STA aobject_ppu_address + 1
	STA z:z08
	LDA z:zFD
	CMP #$08
	BCC @not_next
	LDA z:z09
	JMP @2nd

@not_next:
	LDA z:z09
	ADC #$09

@2nd:
	STA aobject_ppu_address
	CLC
	TYA
	ADC z:z09
	STA z:z09
	TXA
	JSR _bankswitch
	LDY #$1F

@loop:
	LDA (z08), Y
	STA aobject_ppu_data, Y
	DEY
	BPL @loop
	LDA #$20
	STA z:zobject_tiles_update_size
	bankswitch $0D
	RTS
