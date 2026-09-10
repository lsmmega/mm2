_get_weapon_timer:
	LDA #$7D
	STA z:zFD

@loop:
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop
	RTS
