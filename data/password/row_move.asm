password_row_move_right:
	     ; 1    2    3    4    5
	.BYTE $01, $02, $03, $04, $00 ;A
	.BYTE $06, $07, $08, $09, $05 ;B
	.BYTE $0B, $0C, $0D, $0E, $0A ;C
	.BYTE $10, $11, $12, $13, $0F ;D
	.BYTE $15, $16, $17, $18, $14 ;E

password_row_move_left:
	     ; 1    2    3    4    5
	.BYTE $04, $00, $01, $02, $03 ;A
	.BYTE $09, $05, $06, $07, $08 ;B
	.BYTE $0E, $0A, $0B, $0C, $0D ;C
	.BYTE $13, $0F, $10, $11, $12 ;D
	.BYTE $18, $14, $15, $16, $17 ;E

password_row_move_up:
	     ; 1    2    3    4    5
	.BYTE $14, $15, $16, $17, $18 ;A
	.BYTE $00, $01, $02, $03, $04 ;B
	.BYTE $05, $06, $07, $08, $09 ;C
	.BYTE $0A, $0B, $0C, $0D, $0E ;D
	.BYTE $0F, $10, $11, $12, $13 ;E

password_row_move_down:
	     ; 1    2    3    4    5
	.BYTE $05, $06, $07, $08, $09 ;A
	.BYTE $0A, $0B, $0C, $0D, $0E ;B
	.BYTE $0F, $10, $11, $12, $13 ;C
	.BYTE $14, $15, $16, $17, $18 ;D
	.BYTE $00, $01, $02, $03, $04 ;E
