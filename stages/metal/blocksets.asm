;32x32 blocksets with 16x16 blocksets | block attribute.
;block_attribute 2 and 3 setting see home/blocksets.asm. 
	      ;top left,                  bottom left,                top right,                  bottom right
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;00
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;01
	.BYTE $21 | block_attribute_wall, $21 | block_attribute_wall, $22 | block_attribute_wall, $22 | block_attribute_wall ;02
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $21 | block_attribute_wall, $21 | block_attribute_wall ;03
	.BYTE $22 | block_attribute_wall, $22 | block_attribute_wall, $00 | block_attribute_null, $00 | block_attribute_null ;04
	.BYTE $00 | block_attribute_null, $19 | block_attribute_wall, $00 | block_attribute_null, $1B | block_attribute_wall ;05
	.BYTE $18 | block_attribute_wall, $1C | block_attribute_wall, $19 | block_attribute_wall, $21 | block_attribute_wall ;06
	.BYTE $1B | block_attribute_wall, $22 | block_attribute_wall, $1C | block_attribute_wall, $18 | block_attribute_wall ;07
	.BYTE $20 | block_attribute_wall, $28 | block_attribute_wall, $20 | block_attribute_wall, $28 | block_attribute_wall ;08
	.BYTE $1C | block_attribute_wall, $00 | block_attribute_null, $21 | block_attribute_wall, $21 | block_attribute_wall ;09
	.BYTE $19 | block_attribute_wall, $00 | block_attribute_null, $1B | block_attribute_wall, $00 | block_attribute_null ;0A
	.BYTE $00 | block_attribute_null, $18 | block_attribute_wall, $21 | block_attribute_wall, $19 | block_attribute_wall ;0B
	.BYTE $22 | block_attribute_wall, $1B | block_attribute_wall, $00 | block_attribute_null, $1C | block_attribute_wall ;0C
	.BYTE $21 | block_attribute_wall, $19 | block_attribute_wall, $22 | block_attribute_wall, $1B | block_attribute_wall ;0D
	.BYTE $18 | block_attribute_wall, $00 | block_attribute_null, $19 | block_attribute_wall, $21 | block_attribute_wall ;0E
	.BYTE $1B | block_attribute_wall, $22 | block_attribute_wall, $1C | block_attribute_wall, $00 | block_attribute_null ;0F
	.BYTE $39 | block_attribute_wall, $39 | block_attribute_wall, $39 | block_attribute_wall, $39 | block_attribute_wall ;10
	.BYTE $18 | block_attribute_wall, $18 | block_attribute_wall, $19 | block_attribute_wall, $19 | block_attribute_wall ;11
	.BYTE $1B | block_attribute_wall, $1B | block_attribute_wall, $1C | block_attribute_wall, $1C | block_attribute_wall ;12
	.BYTE $1C | block_attribute_wall, $18 | block_attribute_wall, $21 | block_attribute_wall, $19 | block_attribute_wall ;13
	.BYTE $22 | block_attribute_wall, $1B | block_attribute_wall, $18 | block_attribute_wall, $1C | block_attribute_wall ;14
	.BYTE $19 | block_attribute_wall, $21 | block_attribute_wall, $1B | block_attribute_wall, $22 | block_attribute_wall ;15
	.BYTE $29 | block_attribute_wall, $31 | block_attribute_wall, $29 | block_attribute_wall, $31 | block_attribute_wall ;16
	.BYTE $00 | block_attribute_null, $1B | block_attribute_wall, $00 | block_attribute_null, $1C | block_attribute_wall ;17
	.BYTE $30 | block_attribute_wall, $38 | block_attribute_wall, $30 | block_attribute_wall, $38 | block_attribute_wall ;18
	.BYTE $18 | block_attribute_wall, $00 | block_attribute_null, $19 | block_attribute_wall, $00 | block_attribute_null ;19
	.BYTE $1B | block_attribute_wall, $00 | block_attribute_null, $1C | block_attribute_wall, $00 | block_attribute_null ;1A
	.BYTE $1C | block_attribute_wall, $18 | block_attribute_wall, $00 | block_attribute_null, $19 | block_attribute_wall ;1B
	.BYTE $00 | block_attribute_null, $1B | block_attribute_wall, $18 | block_attribute_wall, $1C | block_attribute_wall ;1C
	.BYTE $1C | block_attribute_wall, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;1D
	.BYTE $00 | block_attribute_null, $29 | block_attribute_wall, $00 | block_attribute_null, $29 | block_attribute_wall ;1E
	.BYTE $31 | block_attribute_wall, $00 | block_attribute_null, $31 | block_attribute_wall, $00 | block_attribute_null ;1F
	.BYTE $00 | block_attribute_null, $1F | block_attribute_2,    $00 | block_attribute_null, $1E | block_attribute_2    ;20
	.BYTE $00 | block_attribute_null, $1E | block_attribute_2,    $00 | block_attribute_null, $1E | block_attribute_2    ;21
	.BYTE $00 | block_attribute_null, $1E | block_attribute_2,    $00 | block_attribute_null, $1F | block_attribute_2    ;22
	.BYTE $00 | block_attribute_null, $1D | block_attribute_3,    $00 | block_attribute_null, $1E | block_attribute_3    ;23
	.BYTE $00 | block_attribute_null, $1E | block_attribute_3,    $00 | block_attribute_null, $1E | block_attribute_3    ;24
	.BYTE $00 | block_attribute_null, $1E | block_attribute_3,    $00 | block_attribute_null, $1D | block_attribute_3    ;25
	.BYTE $1D | block_attribute_3,    $00 | block_attribute_null, $1E | block_attribute_3,    $00 | block_attribute_null ;26
	.BYTE $1E | block_attribute_3,    $00 | block_attribute_null, $1E | block_attribute_3,    $00 | block_attribute_null ;27
	.BYTE $1E | block_attribute_3,    $00 | block_attribute_null, $1D | block_attribute_3,    $00 | block_attribute_null ;28
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $1D | block_attribute_3    ;29
	.BYTE $00 | block_attribute_null, $1D | block_attribute_3,    $00 | block_attribute_null, $00 | block_attribute_null ;2A
	.BYTE $1F | block_attribute_2,    $2A | block_attribute_wall, $1E | block_attribute_2,    $3A | block_attribute_wall ;2B
	.BYTE $1E | block_attribute_2,    $3B | block_attribute_wall, $1E | block_attribute_2,    $2B | block_attribute_wall ;2C
	.BYTE $1E | block_attribute_2,    $2A | block_attribute_wall, $1E | block_attribute_2,    $3A | block_attribute_wall ;2D
	.BYTE $1E | block_attribute_2,    $3B | block_attribute_wall, $1F | block_attribute_2,    $2B | block_attribute_wall ;2E
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;2F
	.BYTE $32 | block_attribute_wall, $3A | block_attribute_wall, $33 | block_attribute_wall, $3B | block_attribute_wall ;30
	.BYTE $3A | block_attribute_wall, $32 | block_attribute_wall, $3B | block_attribute_wall, $33 | block_attribute_wall ;31
	.BYTE $3A | block_attribute_wall, $00 | block_attribute_null, $3B | block_attribute_wall, $00 | block_attribute_null ;32
	.BYTE $00 | block_attribute_null, $32 | block_attribute_wall, $00 | block_attribute_null, $33 | block_attribute_wall ;33
	.BYTE $32 | block_attribute_wall, $19 | block_attribute_wall, $33 | block_attribute_wall, $1B | block_attribute_wall ;34
	.BYTE $2B | block_attribute_wall, $1C | block_attribute_wall, $2A | block_attribute_wall, $2A | block_attribute_wall ;35
	.BYTE $2B | block_attribute_wall, $2B | block_attribute_wall, $32 | block_attribute_wall, $3A | block_attribute_wall ;36
	.BYTE $33 | block_attribute_wall, $3B | block_attribute_wall, $2A | block_attribute_wall, $2A | block_attribute_wall ;37
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $2A | block_attribute_wall, $2A | block_attribute_wall ;38
	.BYTE $1C | block_attribute_wall, $00 | block_attribute_null, $2A | block_attribute_wall, $18 | block_attribute_wall ;39
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $2A | block_attribute_wall ;3A
	.BYTE $00 | block_attribute_null, $2B | block_attribute_wall, $00 | block_attribute_null, $00 | block_attribute_null ;3B
	.BYTE $2B | block_attribute_wall, $2B | block_attribute_wall, $00 | block_attribute_null, $00 | block_attribute_null ;3C
	.BYTE $2B | block_attribute_wall, $2B | block_attribute_wall, $2A | block_attribute_wall, $2A | block_attribute_wall ;3D
	.BYTE $2A | block_attribute_wall, $2A | block_attribute_wall, $32 | block_attribute_wall, $3A | block_attribute_wall ;3E
	.BYTE $33 | block_attribute_wall, $3B | block_attribute_wall, $2B | block_attribute_wall, $2B | block_attribute_wall ;3F
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $1F | block_attribute_2,    $2A | block_attribute_wall ;40
	.BYTE $1E | block_attribute_2,    $3A | block_attribute_wall, $1E | block_attribute_2,    $3B | block_attribute_wall ;41
	.BYTE $1E | block_attribute_2,    $3A | block_attribute_wall, $1F | block_attribute_2,    $3B | block_attribute_wall ;42
	.BYTE $1F | block_attribute_2,    $18 | block_attribute_wall, $1E | block_attribute_2,    $19 | block_attribute_wall ;43
	.BYTE $1E | block_attribute_2,    $1B | block_attribute_wall, $1E | block_attribute_2,    $1C | block_attribute_wall ;44
	.BYTE $1E | block_attribute_2,    $18 | block_attribute_wall, $1E | block_attribute_2,    $19 | block_attribute_wall ;45
	.BYTE $1E | block_attribute_2,    $1B | block_attribute_wall, $1F | block_attribute_2,    $1C | block_attribute_wall ;46
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;47
	.BYTE $00 | block_attribute_null, $1D | block_attribute_3,    $2A | block_attribute_wall, $2A | block_attribute_wall ;48
	.BYTE $1D | block_attribute_3,    $2A | block_attribute_wall, $1E | block_attribute_3,    $32 | block_attribute_wall ;49
	.BYTE $1E | block_attribute_3,    $33 | block_attribute_wall, $1E | block_attribute_3,    $2B | block_attribute_wall ;4A
	.BYTE $1E | block_attribute_3,    $2A | block_attribute_wall, $1E | block_attribute_3,    $3A | block_attribute_wall ;4B
	.BYTE $1E | block_attribute_3,    $3B | block_attribute_wall, $1E | block_attribute_3,    $3A | block_attribute_wall ;4C
	.BYTE $1E | block_attribute_3,    $3B | block_attribute_wall, $1D | block_attribute_3,    $2B | block_attribute_wall ;4D
	.BYTE $1E | block_attribute_3,    $3B | block_attribute_wall, $1E | block_attribute_3,    $2B | block_attribute_wall ;4E
	.BYTE $00 | block_attribute_null, $3E | block_attribute_null, $00 | block_attribute_null, $3E | block_attribute_null ;4F
	.BYTE $33 | block_attribute_wall, $3B | block_attribute_wall, $32 | block_attribute_wall, $3A | block_attribute_wall ;50
	.BYTE $18 | block_attribute_wall, $2A | block_attribute_wall, $19 | block_attribute_wall, $3A | block_attribute_wall ;51
	.BYTE $1A | block_attribute_wall, $3B | block_attribute_wall, $1A | block_attribute_wall, $3A | block_attribute_wall ;52
	.BYTE $1B | block_attribute_wall, $3B | block_attribute_wall, $1C | block_attribute_wall, $2B | block_attribute_wall ;53
	.BYTE $20 | block_attribute_wall, $28 | block_attribute_wall, $32 | block_attribute_wall, $3A | block_attribute_wall ;54
	.BYTE $33 | block_attribute_wall, $3B | block_attribute_wall, $20 | block_attribute_wall, $28 | block_attribute_wall ;55
	.BYTE $32 | block_attribute_wall, $18 | block_attribute_wall, $33 | block_attribute_wall, $19 | block_attribute_wall ;56
	.BYTE $32 | block_attribute_wall, $1B | block_attribute_wall, $33 | block_attribute_wall, $1C | block_attribute_wall ;57
	.BYTE $2A | block_attribute_wall, $18 | block_attribute_wall, $32 | block_attribute_wall, $19 | block_attribute_wall ;58
	.BYTE $33 | block_attribute_wall, $1B | block_attribute_wall, $2B | block_attribute_wall, $1C | block_attribute_wall ;59
	.BYTE $39 | block_attribute_wall, $39 | block_attribute_wall, $32 | block_attribute_wall, $3A | block_attribute_wall ;5A
	.BYTE $33 | block_attribute_wall, $3B | block_attribute_wall, $39 | block_attribute_wall, $39 | block_attribute_wall ;5B
	.BYTE $30 | block_attribute_wall, $38 | block_attribute_wall, $32 | block_attribute_wall, $3A | block_attribute_wall ;5C
	.BYTE $33 | block_attribute_wall, $3B | block_attribute_wall, $30 | block_attribute_wall, $38 | block_attribute_wall ;5D
	.BYTE $2A | block_attribute_wall, $18 | block_attribute_wall, $21 | block_attribute_wall, $19 | block_attribute_wall ;5E
	.BYTE $22 | block_attribute_wall, $1B | block_attribute_wall, $28 | block_attribute_wall, $1C | block_attribute_wall ;5F
	.BYTE $32 | block_attribute_wall, $3A | block_attribute_wall, $33 | block_attribute_wall, $18 | block_attribute_wall ;60
	.BYTE $32 | block_attribute_wall, $19 | block_attribute_wall, $33 | block_attribute_wall, $1B | block_attribute_wall ;61
	.BYTE $18 | block_attribute_wall, $19 | block_attribute_wall, $1C | block_attribute_wall, $3B | block_attribute_wall ;62
	.BYTE $1B | block_attribute_wall, $3A | block_attribute_wall, $1C | block_attribute_wall, $3B | block_attribute_wall ;63
	.BYTE $32 | block_attribute_wall, $1A | block_attribute_wall, $18 | block_attribute_wall, $1B | block_attribute_wall ;64
	.BYTE $19 | block_attribute_wall, $3A | block_attribute_wall, $1B | block_attribute_wall, $3B | block_attribute_wall ;65
	.BYTE $1C | block_attribute_wall, $2A | block_attribute_wall, $32 | block_attribute_wall, $3A | block_attribute_wall ;66
	.BYTE $2A | block_attribute_wall, $2A | block_attribute_wall, $3A | block_attribute_wall, $21 | block_attribute_wall ;67
	.BYTE $32 | block_attribute_wall, $3A | block_attribute_wall, $18 | block_attribute_wall, $3B | block_attribute_wall ;68
	.BYTE $19 | block_attribute_wall, $3A | block_attribute_wall, $1B | block_attribute_wall, $3B | block_attribute_wall ;69
	.BYTE $1C | block_attribute_wall, $3A | block_attribute_wall, $33 | block_attribute_wall, $3B | block_attribute_wall ;6A
	.BYTE $18 | block_attribute_wall, $2A | block_attribute_wall, $19 | block_attribute_wall, $21 | block_attribute_wall ;6B
	.BYTE $1B | block_attribute_wall, $22 | block_attribute_wall, $1C | block_attribute_wall, $2B | block_attribute_wall ;6C
	.BYTE $2A | block_attribute_wall, $2A | block_attribute_wall, $21 | block_attribute_wall, $32 | block_attribute_wall ;6D
	.BYTE $22 | block_attribute_wall, $33 | block_attribute_wall, $2B | block_attribute_wall, $2B | block_attribute_wall ;6E
	.BYTE $3B | block_attribute_wall, $22 | block_attribute_wall, $2B | block_attribute_wall, $2B | block_attribute_wall ;6F
	.BYTE $2A | block_attribute_wall, $2A | block_attribute_wall, $3A | block_attribute_wall, $32 | block_attribute_wall ;70
	.BYTE $3B | block_attribute_wall, $33 | block_attribute_wall, $3A | block_attribute_wall, $32 | block_attribute_wall ;71
	.BYTE $3B | block_attribute_wall, $33 | block_attribute_wall, $2B | block_attribute_wall, $2B | block_attribute_wall ;72
	.BYTE $2A | block_attribute_wall, $00 | block_attribute_null, $3A | block_attribute_wall, $00 | block_attribute_null ;73
	.BYTE $3B | block_attribute_wall, $00 | block_attribute_null, $3A | block_attribute_wall, $00 | block_attribute_null ;74
	.BYTE $3B | block_attribute_wall, $00 | block_attribute_null, $2B | block_attribute_wall, $00 | block_attribute_null ;75
	.BYTE $3B | block_attribute_wall, $33 | block_attribute_wall, $3A | block_attribute_wall, $2B | block_attribute_wall ;76
	.BYTE $18 | block_attribute_wall, $3B | block_attribute_wall, $19 | block_attribute_wall, $2B | block_attribute_wall ;77
	.BYTE $00 | block_attribute_null, $20 | block_attribute_wall, $00 | block_attribute_null, $20 | block_attribute_wall ;78
	.BYTE $28 | block_attribute_wall, $39 | block_attribute_wall, $28 | block_attribute_wall, $39 | block_attribute_wall ;79
	.BYTE $39 | block_attribute_wall, $30 | block_attribute_wall, $38 | block_attribute_wall, $20 | block_attribute_wall ;7A
	.BYTE $38 | block_attribute_wall, $29 | block_attribute_wall, $28 | block_attribute_wall, $39 | block_attribute_wall ;7B
	.BYTE $00 | block_attribute_null, $20 | block_attribute_wall, $00 | block_attribute_null, $00 | block_attribute_null ;7C
	.BYTE $28 | block_attribute_wall, $30 | block_attribute_wall, $29 | block_attribute_wall, $31 | block_attribute_wall ;7D
	.BYTE $39 | block_attribute_wall, $39 | block_attribute_wall, $30 | block_attribute_wall, $38 | block_attribute_wall ;7E
	.BYTE $30 | block_attribute_wall, $38 | block_attribute_wall, $20 | block_attribute_wall, $28 | block_attribute_wall ;7F
	.BYTE $26 | block_attribute_null, $2E | block_attribute_null, $27 | block_attribute_null, $2F | block_attribute_null ;80
	.BYTE $00 | block_attribute_null, $2D | block_attribute_null, $25 | block_attribute_null, $00 | block_attribute_null ;81
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $2D | block_attribute_null ;82
	.BYTE $2D | block_attribute_null, $00 | block_attribute_null, $2E | block_attribute_null, $2D | block_attribute_null ;83
	.BYTE $2F | block_attribute_null, $00 | block_attribute_null, $25 | block_attribute_null, $00 | block_attribute_null ;84
	.BYTE $00 | block_attribute_null, $27 | block_attribute_null, $26 | block_attribute_null, $2E | block_attribute_null ;85
	.BYTE $00 | block_attribute_null, $26 | block_attribute_null, $00 | block_attribute_null, $27 | block_attribute_null ;86
	.BYTE $00 | block_attribute_null, $25 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;87
	.BYTE $19 | block_attribute_wall, $00 | block_attribute_null, $1B | block_attribute_wall, $26 | block_attribute_null ;88
	.BYTE $00 | block_attribute_null, $1E | block_attribute_2,    $25 | block_attribute_null, $1E | block_attribute_2    ;89
	.BYTE $26 | block_attribute_null, $1E | block_attribute_2,    $27 | block_attribute_null, $1E | block_attribute_2    ;8A
	.BYTE $2E | block_attribute_null, $1E | block_attribute_2,    $2F | block_attribute_null, $1E | block_attribute_2    ;8B
	.BYTE $2D | block_attribute_null, $1E | block_attribute_2,    $00 | block_attribute_null, $1E | block_attribute_2    ;8C
	.BYTE $27 | block_attribute_null, $18 | block_attribute_wall, $21 | block_attribute_wall, $19 | block_attribute_wall ;8D
	.BYTE $00 | block_attribute_null, $19 | block_attribute_wall, $2E | block_attribute_null, $1A | block_attribute_wall ;8E
	.BYTE $1B | block_attribute_wall, $22 | block_attribute_wall, $1C | block_attribute_wall, $2E | block_attribute_null ;8F
	.BYTE $00 | block_attribute_null, $26 | block_attribute_null, $2E | block_attribute_null, $27 | block_attribute_null ;90
	.BYTE $2F | block_attribute_null, $2D | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;91
	.BYTE $27 | block_attribute_null, $2F | block_attribute_null, $25 | block_attribute_null, $00 | block_attribute_null ;92
	.BYTE $1E | block_attribute_3,    $2E | block_attribute_null, $1E | block_attribute_3,    $2F | block_attribute_null ;93
	.BYTE $18 | block_attribute_wall, $2F | block_attribute_null, $19 | block_attribute_wall, $25 | block_attribute_null ;94
	.BYTE $26 | block_attribute_null, $2E | block_attribute_null, $18 | block_attribute_wall, $2F | block_attribute_null ;95
	.BYTE $00 | block_attribute_null, $2D | block_attribute_null, $26 | block_attribute_null, $2E | block_attribute_null ;96
	.BYTE $27 | block_attribute_null, $18 | block_attribute_wall, $00 | block_attribute_null, $19 | block_attribute_wall ;97
	.BYTE $2E | block_attribute_null, $2D | block_attribute_null, $2F | block_attribute_null, $00 | block_attribute_null ;98
	.BYTE $25 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;99
	.BYTE $2D | block_attribute_null, $25 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;9A
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $2D | block_attribute_null, $00 | block_attribute_null ;9B
	.BYTE $2E | block_attribute_null, $00 | block_attribute_null, $2F | block_attribute_null, $00 | block_attribute_null ;9C
	.BYTE $00 | block_attribute_null, $25 | block_attribute_null, $00 | block_attribute_null, $2D | block_attribute_null ;9D
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $26 | block_attribute_null, $2E | block_attribute_null ;9E
	.BYTE $2E | block_attribute_null, $2D | block_attribute_null, $2F | block_attribute_null, $25 | block_attribute_null ;9F
	.BYTE $3E | block_attribute_null, $00 | block_attribute_null, $3E | block_attribute_null, $00 | block_attribute_null ;A0
	.BYTE $00 | block_attribute_null, $3D | block_attribute_null, $00 | block_attribute_null, $3D | block_attribute_null ;A1
	.BYTE $2E | block_attribute_null, $00 | block_attribute_null, $2F | block_attribute_null, $2D | block_attribute_null ;A2
	.BYTE $2D | block_attribute_null, $26 | block_attribute_null, $00 | block_attribute_null, $27 | block_attribute_null ;A3
	.BYTE $00 | block_attribute_null, $26 | block_attribute_null, $25 | block_attribute_null, $27 | block_attribute_null ;A4
	.BYTE $2D | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;A5
	.BYTE $1F | block_attribute_2,    $00 | block_attribute_null, $1E | block_attribute_2,    $2D | block_attribute_null ;A6
	.BYTE $1E | block_attribute_2,    $2E | block_attribute_null, $1F | block_attribute_2,    $2F | block_attribute_null ;A7
	.BYTE $2C | block_attribute_null, $34 | block_attribute_null, $35 | block_attribute_null, $36 | block_attribute_null ;A8
	.BYTE $3C | block_attribute_null, $00 | block_attribute_null, $37 | block_attribute_null, $00 | block_attribute_null ;A9
	.BYTE $2C | block_attribute_null, $34 | block_attribute_null, $2A | block_attribute_wall, $2A | block_attribute_wall ;AA
	.BYTE $3C | block_attribute_null, $00 | block_attribute_null, $2A | block_attribute_wall, $2A | block_attribute_wall ;AB
	.BYTE $2B | block_attribute_wall, $2B | block_attribute_wall, $35 | block_attribute_null, $36 | block_attribute_null ;AC
	.BYTE $2B | block_attribute_wall, $2B | block_attribute_wall, $37 | block_attribute_null, $00 | block_attribute_null ;AD
	.BYTE $00 | block_attribute_null, $2D | block_attribute_null, $00 | block_attribute_null, $25 | block_attribute_null ;AE
	.BYTE $25 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;AF
	.BYTE $27 | block_attribute_null, $2F | block_attribute_null, $25 | block_attribute_null, $2D | block_attribute_null ;B0
	.BYTE $3E | block_attribute_null, $00 | block_attribute_null, $3D | block_attribute_null, $00 | block_attribute_null ;B1
	.BYTE $3D | block_attribute_null, $00 | block_attribute_null, $3E | block_attribute_null, $00 | block_attribute_null ;B2
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $25 | block_attribute_null, $00 | block_attribute_null ;B3
	.BYTE $25 | block_attribute_null, $00 | block_attribute_null, $2D | block_attribute_null, $25 | block_attribute_null ;B4
	.BYTE $00 | block_attribute_null, $1E | block_attribute_3,    $26 | block_attribute_null, $1E | block_attribute_3    ;B5
	.BYTE $27 | block_attribute_null, $1E | block_attribute_3,    $2D | block_attribute_null, $1E | block_attribute_3    ;B6
	.BYTE $25 | block_attribute_null, $1E | block_attribute_3,    $00 | block_attribute_null, $1E | block_attribute_3    ;B7
	.BYTE $1B | block_attribute_wall, $25 | block_attribute_null, $1C | block_attribute_wall, $00 | block_attribute_null ;B8
	.BYTE $18 | block_attribute_wall, $00 | block_attribute_null, $19 | block_attribute_wall, $25 | block_attribute_null ;B9
	.BYTE $1B | block_attribute_wall, $2E | block_attribute_null, $1C | block_attribute_wall, $2F | block_attribute_null ;BA
	.BYTE $25 | block_attribute_null, $1C | block_attribute_wall, $2E | block_attribute_null, $00 | block_attribute_null ;BB
	.BYTE $2F | block_attribute_null, $00 | block_attribute_null, $18 | block_attribute_wall, $00 | block_attribute_null ;BC
	.BYTE $27 | block_attribute_null, $20 | block_attribute_wall, $00 | block_attribute_null, $20 | block_attribute_wall ;BD
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $26 | block_attribute_null ;BE
	.BYTE $26 | block_attribute_null, $2E | block_attribute_null, $38 | block_attribute_wall, $2F | block_attribute_null ;BF
	.BYTE $20 | block_attribute_wall, $28 | block_attribute_wall, $00 | block_attribute_null, $29 | block_attribute_wall ;C0
	.BYTE $30 | block_attribute_wall, $38 | block_attribute_wall, $31 | block_attribute_wall, $00 | block_attribute_null ;C1
	.BYTE $29 | block_attribute_wall, $31 | block_attribute_wall, $39 | block_attribute_wall, $39 | block_attribute_wall ;C2
	.BYTE $31 | block_attribute_wall, $00 | block_attribute_null, $39 | block_attribute_wall, $30 | block_attribute_wall ;C3
	.BYTE $38 | block_attribute_wall, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;C4
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $30 | block_attribute_wall, $38 | block_attribute_wall ;C5
	.BYTE $31 | block_attribute_wall, $00 | block_attribute_null, $31 | block_attribute_wall, $20 | block_attribute_wall ;C6
	.BYTE $28 | block_attribute_wall, $30 | block_attribute_wall, $28 | block_attribute_wall, $30 | block_attribute_wall ;C7
	.BYTE $38 | block_attribute_wall, $00 | block_attribute_null, $38 | block_attribute_wall, $00 | block_attribute_null ;C8
	.BYTE $18 | block_attribute_wall, $00 | block_attribute_null, $1C | block_attribute_wall, $00 | block_attribute_null ;C9
	.BYTE $29 | block_attribute_wall, $31 | block_attribute_wall, $21 | block_attribute_wall, $21 | block_attribute_wall ;CA
	.BYTE $2B | block_attribute_wall, $2B | block_attribute_wall, $18 | block_attribute_wall, $00 | block_attribute_null ;CB
	.BYTE $1C | block_attribute_wall, $00 | block_attribute_null, $18 | block_attribute_wall, $00 | block_attribute_null ;CC
	.BYTE $3F | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;CD
	.BYTE $00 | block_attribute_null, $3F | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;CE
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $3F | block_attribute_null, $00 | block_attribute_null ;CF
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $09 | block_attribute_wall, $09 | block_attribute_wall ;D0
	.BYTE $07 | block_attribute_wall, $0C | block_attribute_wall, $07 | block_attribute_wall, $0D | block_attribute_wall ;D1
	.BYTE $0E | block_attribute_wall, $0B | block_attribute_wall, $0F | block_attribute_wall, $0B | block_attribute_wall ;D2
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $08 | block_attribute_null, $08 | block_attribute_null ;D3
	.BYTE $23 | block_attribute_null, $23 | block_attribute_null, $23 | block_attribute_null, $23 | block_attribute_null ;D4
	.BYTE $24 | block_attribute_null, $23 | block_attribute_null, $24 | block_attribute_null, $23 | block_attribute_null ;D5
	.BYTE $24 | block_attribute_null, $23 | block_attribute_null, $08 | block_attribute_null, $08 | block_attribute_null ;D6
	.BYTE $23 | block_attribute_null, $23 | block_attribute_null, $08 | block_attribute_null, $08 | block_attribute_null ;D7
	.BYTE $2A | block_attribute_wall, $2A | block_attribute_wall, $24 | block_attribute_null, $23 | block_attribute_null ;D8
	.BYTE $2A | block_attribute_wall, $2A | block_attribute_wall, $23 | block_attribute_null, $23 | block_attribute_null ;D9
	.BYTE $24 | block_attribute_null, $23 | block_attribute_null, $23 | block_attribute_null, $23 | block_attribute_null ;DA
	.BYTE $24 | block_attribute_null, $23 | block_attribute_null, $2B | block_attribute_wall, $2B | block_attribute_wall ;DB
	.BYTE $23 | block_attribute_null, $23 | block_attribute_null, $2B | block_attribute_wall, $2B | block_attribute_wall ;DC
	.BYTE $2A | block_attribute_wall, $2A | block_attribute_wall, $1D | block_attribute_3,    $3A | block_attribute_wall ;DD
	.BYTE $1D | block_attribute_3,    $3B | block_attribute_wall, $2B | block_attribute_wall, $2B | block_attribute_wall ;DE
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;DF
	.BYTE $1E | block_attribute_3,    $2A | block_attribute_wall, $1D | block_attribute_3,    $32 | block_attribute_wall ;E0
	.BYTE $00 | block_attribute_null, $33 | block_attribute_wall, $00 | block_attribute_null, $32 | block_attribute_wall ;E1
	.BYTE $1F | block_attribute_2,    $33 | block_attribute_wall, $1E | block_attribute_2,    $2B | block_attribute_wall ;E2
	.BYTE $1E | block_attribute_3,    $32 | block_attribute_wall, $1D | block_attribute_3,    $33 | block_attribute_wall ;E3
	.BYTE $1F | block_attribute_2,    $32 | block_attribute_wall, $1E | block_attribute_2,    $33 | block_attribute_wall ;E4
	.BYTE $1E | block_attribute_2,    $32 | block_attribute_wall, $1F | block_attribute_2,    $33 | block_attribute_wall ;E5
	.BYTE $2B | block_attribute_wall, $00 | block_attribute_null, $2A | block_attribute_wall, $00 | block_attribute_null ;E6
	.BYTE $2B | block_attribute_wall, $00 | block_attribute_null, $2A | block_attribute_wall, $2A | block_attribute_wall ;E7
	.BYTE $1E | block_attribute_2,    $2A | block_attribute_wall, $1F | block_attribute_2,    $32 | block_attribute_wall ;E8
	.BYTE $1D | block_attribute_3,    $33 | block_attribute_wall, $1E | block_attribute_3,    $2B | block_attribute_wall ;E9
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $09 | block_attribute_wall, $0A | block_attribute_wall ;EA
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;EB
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;EC
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;ED
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;EE
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null ;EF
	.BYTE $00 | block_attribute_null, $2B | block_attribute_wall, $00 | block_attribute_null, $2B | block_attribute_wall ;F0
	.BYTE $00 | block_attribute_null, $2E | block_attribute_2,    $00 | block_attribute_null, $00 | block_attribute_null ;F1
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $2B | block_attribute_wall, $00 | block_attribute_null ;F2
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $00 | block_attribute_null, $0F | block_attribute_wall ;F3
	.BYTE $00 | block_attribute_null, $0F | block_attribute_wall, $00 | block_attribute_null, $0F | block_attribute_wall ;F4
	.BYTE $00 | block_attribute_null, $00 | block_attribute_null, $0F | block_attribute_wall, $0F | block_attribute_wall ;F5
	.BYTE $00 | block_attribute_null, $0F | block_attribute_wall, $0F | block_attribute_wall, $0F | block_attribute_wall ;F6
	.BYTE $22 | block_attribute_null, $22 | block_attribute_null, $0F | block_attribute_wall, $0F | block_attribute_wall ;F7
	.BYTE $22 | block_attribute_null, $0F | block_attribute_wall, $0F | block_attribute_wall, $0F | block_attribute_wall ;F8
	.BYTE $30 | block_attribute_wall, $32 | block_attribute_wall, $31 | block_attribute_wall, $33 | block_attribute_wall ;F9
	.BYTE $3F | block_attribute_null, $00 | block_attribute_null, $3F | block_attribute_null, $00 | block_attribute_null ;FA
	.BYTE $34 | block_attribute_wall, $35 | block_attribute_wall, $36 | block_attribute_wall, $37 | block_attribute_wall ;FB
	.BYTE $0A | block_attribute_wall, $12 | block_attribute_wall, $17 | block_attribute_null, $17 | block_attribute_null ;FC
	.BYTE $3F | block_attribute_2,    $16 | block_attribute_null, $17 | block_attribute_null, $17 | block_attribute_null ;FD
	.BYTE $17 | block_attribute_null, $17 | block_attribute_null, $05 | block_attribute_3,    $05 | block_attribute_3    ;FE
	.BYTE $3F | block_attribute_2,    $16 | block_attribute_null, $3F | block_attribute_2,    $16 | block_attribute_null ;FF