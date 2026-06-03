_init_miscellaneous_xcoord:
	LDX #$02
	LDA #$00

@loop:
	STA aobject_xcoord + 1, X
	STA aobject_xcoord_fraction + 1, X
	DEX
	BPL @loop
	RTS
