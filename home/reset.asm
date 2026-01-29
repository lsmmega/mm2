reset:
irq:
	SEI

_reset:
	INC _reset
	JMP __reset
