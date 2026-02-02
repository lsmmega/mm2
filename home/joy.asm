_joy:
	LDX #$01
	STX JOY1
	DEX
	STX JOY1
	INX

@loop_1:
	LDY #$08

@loop_2:
	LDA JOY1, X
	STA z:zjoy1_pressed_bits
	LSR
	ORA z:zjoy1_pressed_bits
	LSR
	ROR z:zjoy1_pressed, X
	DEY
	BNE @loop_2
	DEX
	BPL @loop_1
	RTS
