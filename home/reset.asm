RESET:
IRQ:
	.ORG $FFE0

	SEI
label_1
	INC label_1
	JMP $F2D1
