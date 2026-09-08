_init_credit_strings:
	LDX #$20
	STX z:zobject_tiles_update_size
	DEX

@loop:
	STA aobject_ppu_data, X
	DEX
	BPL @loop
	JSR _nmi_wait_0d
	RTS
