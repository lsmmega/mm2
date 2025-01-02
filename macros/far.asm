.MACRO farjmp B
	lda #<.BANK(B)
	jsr bankswitch
	jmp B
.ENDMACRO