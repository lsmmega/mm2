_stage_select_set:
	LDA z:zjoy1_pressed_bits
	LSR
	LSR
	LSR
	LSR
	BEQ @skip
	CMP #$09
	BCS @skip
	STA z:z00
	DEC z:z00
	LDA z:zcurrent_stage
	ASL
	ASL
	ASL
	CLC
	ADC z:z00
	TAX
	LDA @stage_select_table, X
	STA z:zcurrent_stage

@skip:
	RTS

@stage_select_table:
; 1 2 3
; 8 0 4
; 7 6 5

;0
	.BYTE $02 ;up, 0
	.BYTE $06 ;down, 0
	.BYTE $00
	.BYTE $08 ;left, 0
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $04 ;right, 0

;1
	.BYTE $01 ;up, 1
	.BYTE $08 ;down, 1
	.BYTE $01
	.BYTE $01 ;left, 1
	.BYTE $01
	.BYTE $01
	.BYTE $01
	.BYTE $02 ;right, 1

;2
	.BYTE $02 ;up, 2
	.BYTE $00 ;down, 2
	.BYTE $02
	.BYTE $01 ;left, 2
	.BYTE $02
	.BYTE $02
	.BYTE $02
	.BYTE $03 ;right, 2

;3
	.BYTE $03 ;up, 3
	.BYTE $04 ;down, 3
	.BYTE $03
	.BYTE $02 ;left, 3
	.BYTE $03
	.BYTE $03
	.BYTE $03
	.BYTE $03 ;right, 3

;4
	.BYTE $03 ;up, 4
	.BYTE $05 ;down, 4
	.BYTE $04
	.BYTE $00 ;left, 4
	.BYTE $04
	.BYTE $04
	.BYTE $04
	.BYTE $04 ;right, 4

;5
	.BYTE $04 ;up, 5
	.BYTE $05 ;down, 5
	.BYTE $05
	.BYTE $06 ;left, 5
	.BYTE $05
	.BYTE $05
	.BYTE $05
	.BYTE $05 ;right, 5

;6
	.BYTE $00 ;up, 6
	.BYTE $06 ;down, 6
	.BYTE $06
	.BYTE $07 ;left, 6
	.BYTE $06
	.BYTE $06
	.BYTE $06
	.BYTE $05 ;right, 6

;7
	.BYTE $08 ;up, 7
	.BYTE $07 ;down, 7
	.BYTE $07
	.BYTE $07 ;left, 7
	.BYTE $07
	.BYTE $07
	.BYTE $07
	.BYTE $06 ;right 7

;8
	.BYTE $01 ;up, 8
	.BYTE $07 ;down, 8
	.BYTE $08
	.BYTE $08 ;left, 8
	.BYTE $08
	.BYTE $08
	.BYTE $08
	.BYTE $00 ;right, 8
