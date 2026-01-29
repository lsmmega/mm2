.MACRO bankswitch b
	LDA #b
	JSR _bankswitch
.ENDMACRO

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

.MACRO farrts b
	LDA #<.BANK (b)
	JSR _bankswitch
	RTS
.ENDMACRO
