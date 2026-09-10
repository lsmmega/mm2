_init_get_weapon_strings:
	LDX #$1F
	LDA #$00

@loop_1:
	STA aobject_ppu_data, X
	DEX
	BPL @loop_1
	LDA #$09
	STA z:zFD
	LDA #$24
	STA aobject_ppu_address
	LDA #$AB
	STA aobject_ppu_address + 1

@loop_2:
	CLC
	LDA aobject_ppu_address + 1
	ADC #$20
	STA aobject_ppu_address + 1
	LDA aobject_ppu_address
	ADC #$00
	STA aobject_ppu_address
	LDA #$0F
	STA z:zobject_tiles_update_size
	JSR _nmi_wait_0d
	DEC z:zFD
	BPL @loop_2
	RTS
