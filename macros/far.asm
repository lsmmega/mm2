.MACRO farjmp b
	LDA #<.BANK (b)
	JSR _bankswitch
	JMP b
.ENDMACRO

.MACRO farjsr b
	LDA #<.BANK (b)
	JSR _bankswitch
	JSR b
.ENDMACRO
