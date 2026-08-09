_tsa_collision:
	LDA z:zcurrent_stage
	AND #%00000111
	JSR _bankswitch
	LDA #$00
	STA z:z00
	LDA z:z0B
	BEQ @check
	BMI @scroll_edge
	JMP @skip

@scroll_edge:
	LDA #$00
	STA z:z0A

@check:
	LDA z:z08
	LSR
	LSR
	AND #%00111000
	STA z:z00
	LDA z:z0A
	ASL
	ROL
	ROL
	ROL
	AND #%00000111
	ORA z:z00
	STA z:z00
	LDA #<stage_mapset_pointer
	STA z:z0C
	LDA z:z09
	LSR
	ROR z:z0C
	LSR
	ROR z:z0C
	CLC
	ADC #>stage_mapset_pointer
	STA z:z0D
	LDY z:z00
	LDA (z0C), Y
	STA z:z0C
	LDA #$20
	ASL z:z0C
	ROL
	ASL z:z0C
	ROL
	STA z:z0D
	LDY #$00
	LDA z:z08
	AND #%00010000
	BEQ @even_1
	INY
	INY

@even_1:
	LDA z:z0A
	AND #%00010000
	BEQ @even_2
	INY

@even_2:
	LDA (z0C), Y
	STA z:z00
	ASL z:z00
	ROL
	ASL z:z00
	ROL
	AND #%00000011
	STA z:z00
	LSR
	BEQ @skip
	DEC z:z00
	DEC z:z00
	LDA z:zcurrent_stage
	ASL
	ADC z:z00
	TAX
	LDA tsa_blockset_table, X
	STA z:z00

@skip:
	bankswitch $0E
	RTS

tsa_blockset_table:
;heatman
	.BYTE ladder
	.BYTE spike

;airman
	.BYTE ladder
	.BYTE spike

;woodman
	.BYTE ladder
	.BYTE background

;bubbleman
	.BYTE water
	.BYTE spike

;quickman
	.BYTE background
	.BYTE spike

;flashman
	.BYTE ladder
	.BYTE ice

;metalman
	.BYTE conveyor_right
	.BYTE conveyor_left

;crashman
	.BYTE ladder
	.BYTE spike

;wily 1
	.BYTE ladder
	.BYTE background

;wily 2
	.BYTE ladder
	.BYTE spike

;wily 3
	.BYTE water
	.BYTE spike

;wily 4
	.BYTE ladder
	.BYTE spike

;wily 5
	.BYTE background
	.BYTE background

;wily 6
	.BYTE background
	.BYTE background
