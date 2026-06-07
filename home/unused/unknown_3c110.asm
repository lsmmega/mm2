_unknown_3c110:
@loop:
	PHA
	JSR _nmi_wait_0e
	PLA
	SEC
	SBC #$01
	BNE @loop
	RTS
