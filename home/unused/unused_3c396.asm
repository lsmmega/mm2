_unused_3c396:
	LDX #$1F
	LDA #$00

@loop:
	STA aobject_frameset_lower_timer, X
	DEX
	BPL @loop
	JMP _jmp_unused_3c396_common
