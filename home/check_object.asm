_check_object:
	LDX #$0F

@loop:
	LDA aobject_flag + $10, X
	BPL @not_exist
	DEX
	BPL @loop
	SEC
	RTS

@not_exist:
	CLC
	RTS
