	;     topleft,      bottomleft,   topright,     bottomright
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;00
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;01
	.BYTE $2E | 1 << 6, $2E | 1 << 6, $2E | 1 << 6, $2E | 1 << 6 ;02
	.BYTE $2E | 1 << 6, $2E | 1 << 6, $2F | 1 << 6, $2F | 1 << 6 ;03
	.BYTE $2E | 1 << 6, $2E | 1 << 6, $2F | 0 << 6, $2F | 0 << 6 ;04
	.BYTE $32 | 0 << 6, $3E | 0 << 6, $31 | 0 << 6, $3E | 0 << 6 ;05
	.BYTE $31 | 0 << 6, $3E | 0 << 6, $31 | 0 << 6, $3E | 0 << 6 ;06
	.BYTE $31 | 0 << 6, $3E | 0 << 6, $33 | 0 << 6, $3E | 0 << 6 ;07
	.BYTE $31 | 0 << 6, $28 | 0 << 6, $31 | 0 << 6, $3E | 0 << 6 ;08
	.BYTE $31 | 0 << 6, $3E | 0 << 6, $2E | 0 << 6, $32 | 0 << 6 ;09
	.BYTE $2E | 0 << 6, $2E | 0 << 6, $2E | 0 << 6, $2E | 0 << 6 ;0A
	.BYTE $2E | 0 << 6, $2E | 0 << 6, $2F | 0 << 6, $2F | 0 << 6 ;0B
	.BYTE $32 | 0 << 6, $3E | 0 << 6, $2E | 0 << 6, $32 | 0 << 6 ;0C
	.BYTE $2E | 0 << 6, $31 | 0 << 6, $2E | 0 << 6, $31 | 0 << 6 ;0D
	.BYTE $2E | 0 << 6, $33 | 0 << 6, $33 | 0 << 6, $3E | 0 << 6 ;0E
	.BYTE $2A | 0 << 6, $2A | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;0F
	.BYTE $2E | 0 << 6, $32 | 0 << 6, $2E | 0 << 6, $31 | 0 << 6 ;10
	.BYTE $2E | 0 << 6, $33 | 0 << 6, $31 | 0 << 6, $3E | 0 << 6 ;11
	.BYTE $28 | 0 << 6, $28 | 0 << 6, $3D | 0 << 6, $00 | 0 << 6 ;12
	.BYTE $3D | 0 << 6, $00 | 0 << 6, $3E | 0 << 6, $36 | 0 << 6 ;13
	.BYTE $37 | 0 << 6, $00 | 0 << 6, $36 | 0 << 6, $00 | 0 << 6 ;14
	.BYTE $3E | 0 << 6, $3D | 0 << 6, $3E | 0 << 6, $3D | 0 << 6 ;15
	.BYTE $36 | 0 << 6, $00 | 0 << 6, $3D | 0 << 6, $00 | 0 << 6 ;16
	.BYTE $2A | 0 << 6, $2B | 0 << 6, $2D | 0 << 6, $20 | 1 << 6 ;17
	.BYTE $3E | 0 << 6, $3D | 0 << 6, $3E | 0 << 6, $37 | 0 << 6 ;18
	.BYTE $3D | 0 << 6, $2A | 0 << 6, $3D | 0 << 6, $00 | 0 << 6 ;19
	.BYTE $28 | 0 << 6, $28 | 0 << 6, $3E | 0 << 6, $3D | 0 << 6 ;1A
	.BYTE $3E | 0 << 6, $2A | 0 << 6, $37 | 0 << 6, $00 | 0 << 6 ;1B
	.BYTE $3E | 0 << 6, $2A | 0 << 6, $3E | 0 << 6, $36 | 0 << 6 ;1C
	.BYTE $00 | 0 << 6, $2D | 0 << 6, $00 | 0 << 6, $2D | 0 << 6 ;1D
	.BYTE $2A | 0 << 6, $2B | 0 << 6, $00 | 0 << 6, $2D | 0 << 6 ;1E
	.BYTE $28 | 0 << 6, $28 | 0 << 6, $00 | 0 << 6, $2D | 0 << 6 ;1F
	.BYTE $01 | 0 << 6, $34 | 0 << 6, $34 | 0 << 6, $2E | 0 << 6 ;20
	.BYTE $2C | 0 << 6, $2E | 0 << 6, $2C | 0 << 6, $2E | 0 << 6 ;21
	.BYTE $28 | 0 << 6, $28 | 0 << 6, $3E | 0 << 6, $3E | 0 << 6 ;22
	.BYTE $35 | 0 << 6, $2E | 0 << 6, $01 | 0 << 6, $35 | 0 << 6 ;23
	.BYTE $2C | 0 << 6, $2E | 0 << 6, $3F | 0 << 6, $2F | 0 << 6 ;24
	.BYTE $3E | 0 << 6, $3E | 0 << 6, $3E | 0 << 6, $3E | 0 << 6 ;25
	.BYTE $2E | 0 << 6, $31 | 0 << 6, $21 | 0 << 6, $33 | 0 << 6 ;26
	.BYTE $3E | 0 << 6, $37 | 0 << 6, $3D | 0 << 6, $00 | 0 << 6 ;27
	.BYTE $00 | 0 << 6, $2D | 0 << 6, $08 | 0 << 6, $08 | 0 << 6 ;28
	.BYTE $31 | 0 << 6, $3E | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;29
	.BYTE $38 | 1 << 6, $38 | 1 << 6, $19 | 1 << 6, $19 | 1 << 6 ;2A
	.BYTE $39 | 1 << 6, $39 | 1 << 6, $21 | 0 << 6, $21 | 0 << 6 ;2B
	.BYTE $21 | 0 << 6, $21 | 0 << 6, $38 | 1 << 6, $38 | 1 << 6 ;2C
	.BYTE $2B | 0 << 6, $20 | 1 << 6, $2D | 0 << 6, $20 | 1 << 6 ;2D
	.BYTE $28 | 0 << 6, $20 | 1 << 6, $2D | 0 << 6, $20 | 1 << 6 ;2E
	.BYTE $2A | 0 << 6, $2B | 0 << 6, $2D | 0 << 6, $20 | 1 << 6 ;2F
	.BYTE $2E | 1 << 6, $2E | 1 << 6, $19 | 1 << 6, $19 | 1 << 6 ;30
	.BYTE $3E | 0 << 6, $37 | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;31
	.BYTE $18 | 1 << 6, $18 | 1 << 6, $39 | 1 << 6, $39 | 1 << 6 ;32
	.BYTE $39 | 1 << 6, $18 | 1 << 6, $21 | 0 << 6, $20 | 1 << 6 ;33
	.BYTE $1A | 1 << 6, $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;34
	.BYTE $02 | 2 << 6, $00 | 0 << 6, $1A | 1 << 6, $00 | 0 << 6 ;35
	.BYTE $1A | 1 << 6, $00 | 0 << 6, $1A | 1 << 6, $00 | 0 << 6 ;36
	.BYTE $02 | 2 << 6, $02 | 2 << 6, $2E | 0 << 6, $2E | 0 << 6 ;37
	.BYTE $2E | 0 << 6, $2E | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;38
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;39
	.BYTE $18 | 1 << 6, $18 | 1 << 6, $19 | 1 << 6, $39 | 1 << 6 ;3A
	.BYTE $20 | 1 << 6, $38 | 1 << 6, $20 | 1 << 6, $19 | 1 << 6 ;3B
	.BYTE $20 | 1 << 6, $18 | 1 << 6, $20 | 1 << 6, $39 | 1 << 6 ;3C
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $2F | 3 << 6, $20 | 1 << 6 ;3D
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $2F | 3 << 6, $01 | 2 << 6 ;3E
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;3F
	.BYTE $01 | 0 << 6, $20 | 1 << 6, $01 | 0 << 6, $20 | 1 << 6 ;40
	.BYTE $28 | 3 << 6, $20 | 1 << 6, $01 | 0 << 6, $20 | 1 << 6 ;41
	.BYTE $02 | 2 << 6, $02 | 2 << 6, $19 | 1 << 6, $19 | 1 << 6 ;42
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;43
	.BYTE $21 | 0 << 6, $21 | 0 << 6, $21 | 0 << 6, $21 | 0 << 6 ;44
	.BYTE $22 | 0 << 6, $21 | 0 << 6, $22 | 0 << 6, $21 | 0 << 6 ;45
	.BYTE $21 | 0 << 6, $21 | 0 << 6, $22 | 0 << 6, $21 | 0 << 6 ;46
	.BYTE $22 | 0 << 6, $21 | 0 << 6, $21 | 0 << 6, $21 | 0 << 6 ;47
	.BYTE $21 | 0 << 6, $21 | 0 << 6, $02 | 2 << 6, $02 | 2 << 6 ;48
	.BYTE $21 | 0 << 6, $21 | 0 << 6, $02 | 2 << 6, $21 | 0 << 6 ;49
	.BYTE $21 | 0 << 6, $24 | 0 << 6, $1D | 0 << 6, $25 | 0 << 6 ;4A
	.BYTE $1E | 0 << 6, $26 | 0 << 6, $1F | 0 << 6, $27 | 0 << 6 ;4B
	.BYTE $22 | 0 << 6, $21 | 0 << 6, $21 | 0 << 6, $23 | 0 << 6 ;4C
	.BYTE $21 | 0 << 6, $1B | 0 << 6, $21 | 0 << 6, $1C | 0 << 6 ;4D
	.BYTE $20 | 1 << 6, $18 | 1 << 6, $20 | 1 << 6, $19 | 1 << 6 ;4E
	.BYTE $18 | 1 << 6, $18 | 1 << 6, $19 | 1 << 6, $19 | 1 << 6 ;4F
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $08 | 0 << 6, $08 | 0 << 6 ;50
	.BYTE $2E | 0 << 6, $31 | 0 << 6, $09 | 1 << 6, $09 | 1 << 6 ;51
	.BYTE $07 | 1 << 6, $0C | 1 << 6, $07 | 1 << 6, $0D | 1 << 6 ;52
	.BYTE $0E | 1 << 6, $0B | 1 << 6, $0F | 1 << 6, $0B | 1 << 6 ;53
	.BYTE $22 | 0 << 6, $21 | 0 << 6, $08 | 0 << 6, $08 | 0 << 6 ;54
	.BYTE $21 | 0 << 6, $21 | 0 << 6, $08 | 0 << 6, $08 | 0 << 6 ;55
	.BYTE $1A | 1 << 6, $22 | 0 << 6, $22 | 0 << 6, $21 | 0 << 6 ;56
	.BYTE $21 | 0 << 6, $20 | 1 << 6, $21 | 0 << 6, $20 | 1 << 6 ;57
	.BYTE $02 | 2 << 6, $02 | 2 << 6, $22 | 0 << 6, $21 | 0 << 6 ;58
	.BYTE $22 | 0 << 6, $21 | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;59
	.BYTE $18 | 1 << 6, $18 | 1 << 6, $21 | 0 << 6, $21 | 0 << 6 ;5A
	.BYTE $22 | 0 << 6, $21 | 0 << 6, $02 | 2 << 6, $02 | 2 << 6 ;5B
	.BYTE $18 | 1 << 6, $18 | 1 << 6, $02 | 2 << 6, $02 | 2 << 6 ;5C
	.BYTE $1A | 1 << 6, $22 | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;5D
	.BYTE $22 | 0 << 6, $21 | 0 << 6, $1A | 1 << 6, $22 | 0 << 6 ;5E
	.BYTE $18 | 1 << 6, $18 | 1 << 6, $1A | 1 << 6, $22 | 0 << 6 ;5F
	.BYTE $29 | 1 << 6, $01 | 0 << 6, $29 | 1 << 6, $01 | 0 << 6 ;60
	.BYTE $21 | 0 << 6, $21 | 0 << 6, $00 | 0 << 6, $01 | 0 << 6 ;61
	.BYTE $18 | 1 << 6, $1A | 1 << 6, $22 | 0 << 6, $21 | 0 << 6 ;62
	.BYTE $21 | 0 << 6, $21 | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;63
	.BYTE $21 | 0 << 6, $02 | 2 << 6, $19 | 1 << 6, $19 | 1 << 6 ;64
	.BYTE $1A | 1 << 6, $22 | 0 << 6, $1A | 1 << 6, $22 | 0 << 6 ;65
	.BYTE $1A | 1 << 6, $01 | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;66
	.BYTE $18 | 1 << 6, $18 | 1 << 6, $19 | 1 << 6, $19 | 1 << 6 ;67
	.BYTE $35 | 0 << 6, $36 | 0 << 6, $38 | 0 << 6, $37 | 0 << 6 ;68
	.BYTE $34 | 0 << 6, $36 | 0 << 6, $2F | 0 << 6, $37 | 0 << 6 ;69
	.BYTE $1A | 1 << 6, $22 | 0 << 6, $19 | 1 << 6, $1A | 1 << 6 ;6A
	.BYTE $02 | 2 << 6, $20 | 1 << 6, $21 | 0 << 6, $20 | 1 << 6 ;6B
	.BYTE $02 | 2 << 6, $02 | 2 << 6, $1A | 1 << 6, $22 | 0 << 6 ;6C
	.BYTE $38 | 0 << 6, $38 | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;6D
	.BYTE $20 | 1 << 6, $18 | 1 << 6, $19 | 1 << 6, $19 | 1 << 6 ;6E
	.BYTE $18 | 1 << 6, $18 | 1 << 6, $20 | 1 << 6, $19 | 1 << 6 ;6F
	.BYTE $21 | 0 << 6, $21 | 0 << 6, $20 | 1 << 6, $19 | 1 << 6 ;70
	.BYTE $20 | 1 << 6, $18 | 1 << 6, $02 | 2 << 6, $02 | 2 << 6 ;71
	.BYTE $02 | 2 << 6, $02 | 2 << 6, $20 | 1 << 6, $19 | 1 << 6 ;72
	.BYTE $20 | 1 << 6, $18 | 1 << 6, $21 | 0 << 6, $21 | 0 << 6 ;73
	.BYTE $18 | 1 << 6, $1A | 1 << 6, $19 | 1 << 6, $1A | 1 << 6 ;74
	.BYTE $18 | 1 << 6, $1A | 1 << 6, $19 | 1 << 6, $19 | 1 << 6 ;75
	.BYTE $18 | 1 << 6, $18 | 1 << 6, $19 | 1 << 6, $1A | 1 << 6 ;76
	.BYTE $18 | 1 << 6, $1A | 1 << 6, $1A | 1 << 6, $22 | 0 << 6 ;77
	.BYTE $18 | 1 << 6, $1A | 1 << 6, $1A | 1 << 6, $01 | 0 << 6 ;78
	.BYTE $1A | 1 << 6, $2E | 0 << 6, $2E | 0 << 6, $2E | 0 << 6 ;79
	.BYTE $18 | 1 << 6, $1A | 1 << 6, $02 | 2 << 6, $02 | 2 << 6 ;7A
	.BYTE $02 | 2 << 6, $02 | 2 << 6, $19 | 1 << 6, $1A | 1 << 6 ;7B
	.BYTE $22 | 0 << 6, $21 | 0 << 6, $19 | 1 << 6, $1A | 1 << 6 ;7C
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $1A | 1 << 6, $01 | 0 << 6 ;7D
	.BYTE $21 | 0 << 6, $20 | 1 << 6, $21 | 0 << 6, $21 | 0 << 6 ;7E
	.BYTE $39 | 0 << 6, $3A | 0 << 6, $37 | 0 << 6, $39 | 0 << 6 ;7F
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $3A | 0 << 6, $00 | 0 << 6 ;80
	.BYTE $3C | 0 << 6, $3D | 0 << 6, $37 | 0 << 6, $3F | 0 << 6 ;81
	.BYTE $3B | 0 << 6, $2A | 0 << 6, $39 | 0 << 6, $3A | 0 << 6 ;82
	.BYTE $36 | 0 << 6, $3D | 0 << 6, $39 | 0 << 6, $3F | 0 << 6 ;83
	.BYTE $38 | 0 << 6, $35 | 0 << 6, $38 | 0 << 6, $37 | 0 << 6 ;84
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;85
	.BYTE $00 | 0 << 6, $2D | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;86
	.BYTE $37 | 0 << 6, $3A | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;87
	.BYTE $30 | 3 << 6, $31 | 3 << 6, $33 | 0 << 6, $37 | 0 << 6 ;88
	.BYTE $2D | 0 << 6, $20 | 1 << 6, $2D | 0 << 6, $20 | 1 << 6 ;89
	.BYTE $01 | 0 << 6, $2C | 0 << 6, $2C | 0 << 6, $38 | 0 << 6 ;8A
	.BYTE $2C | 0 << 6, $38 | 0 << 6, $2C | 0 << 6, $38 | 0 << 6 ;8B
	.BYTE $2C | 0 << 6, $38 | 0 << 6, $01 | 0 << 6, $2C | 0 << 6 ;8C
	.BYTE $01 | 0 << 6, $2C | 0 << 6, $2C | 0 << 6, $2E | 0 << 6 ;8D
	.BYTE $01 | 0 << 6, $2C | 0 << 6, $01 | 0 << 6, $2C | 0 << 6 ;8E
	.BYTE $01 | 0 << 6, $2C | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;8F
	.BYTE $38 | 0 << 6, $38 | 0 << 6, $2C | 0 << 6, $38 | 0 << 6 ;90
	.BYTE $2C | 0 << 6, $35 | 0 << 6, $01 | 0 << 6, $2C | 0 << 6 ;91
	.BYTE $38 | 0 << 6, $35 | 0 << 6, $38 | 0 << 6, $38 | 0 << 6 ;92
	.BYTE $34 | 0 << 6, $35 | 0 << 6, $2F | 0 << 6, $38 | 0 << 6 ;93
	.BYTE $20 | 1 << 6, $1A | 1 << 6, $20 | 1 << 6, $1A | 1 << 6 ;94
	.BYTE $20 | 1 << 6, $18 | 1 << 6, $19 | 1 << 6, $19 | 1 << 6 ;95
	.BYTE $18 | 1 << 6, $18 | 1 << 6, $22 | 0 << 6, $21 | 0 << 6 ;96
	.BYTE $01 | 0 << 6, $29 | 1 << 6, $01 | 0 << 6, $29 | 1 << 6 ;97
	.BYTE $18 | 1 << 6, $1A | 1 << 6, $22 | 0 << 6, $21 | 0 << 6 ;98
	.BYTE $1A | 1 << 6, $22 | 0 << 6, $21 | 0 << 6, $21 | 0 << 6 ;99
	.BYTE $21 | 0 << 6, $21 | 0 << 6, $1A | 1 << 6, $22 | 0 << 6 ;9A
	.BYTE $18 | 1 << 6, $18 | 1 << 6, $21 | 0 << 6, $20 | 1 << 6 ;9B
	.BYTE $21 | 0 << 6, $21 | 0 << 6, $19 | 1 << 6, $19 | 1 << 6 ;9C
	.BYTE $20 | 1 << 6, $18 | 1 << 6, $21 | 0 << 6, $21 | 0 << 6 ;9D
	.BYTE $18 | 1 << 6, $1A | 1 << 6, $21 | 0 << 6, $21 | 0 << 6 ;9E
	.BYTE $3E | 0 << 6, $37 | 0 << 6, $09 | 1 << 6, $0A | 1 << 6 ;9F
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $00 | 0 << 6, $00 | 0 << 6 ;A0
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $1A | 1 << 6, $1C | 1 << 6 ;A1
	.BYTE $1B | 1 << 6, $1F | 1 << 6, $1A | 1 << 6, $1C | 1 << 6 ;A2
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $2E | 0 << 6, $2D | 0 << 6 ;A3
	.BYTE $1B | 1 << 6, $1F | 1 << 6, $2D | 0 << 6, $2D | 0 << 6 ;A4
	.BYTE $19 | 1 << 6, $1D | 1 << 6, $2D | 0 << 6, $2D | 0 << 6 ;A5
	.BYTE $1F | 1 << 6, $2E | 0 << 6, $2D | 0 << 6, $2D | 0 << 6 ;A6
	.BYTE $1B | 1 << 6, $1F | 1 << 6, $1A | 1 << 6, $1E | 1 << 6 ;A7
	.BYTE $2D | 0 << 6, $2D | 0 << 6, $2D | 0 << 6, $2D | 0 << 6 ;A8
	.BYTE $2D | 0 << 6, $2D | 0 << 6, $20 | 1 << 6, $2E | 0 << 6 ;A9
	.BYTE $20 | 1 << 6, $2E | 0 << 6, $2D | 0 << 6, $2D | 0 << 6 ;AA
	.BYTE $2D | 0 << 6, $2D | 0 << 6, $2D | 0 << 6, $20 | 1 << 6 ;AB
	.BYTE $2D | 0 << 6, $2D | 0 << 6, $2E | 0 << 6, $2D | 0 << 6 ;AC
	.BYTE $2E | 0 << 6, $2D | 0 << 6, $2D | 0 << 6, $2D | 0 << 6 ;AD
	.BYTE $2D | 0 << 6, $2D | 0 << 6, $1E | 1 << 6, $2E | 0 << 6 ;AE
	.BYTE $2E | 0 << 6, $2D | 0 << 6, $2E | 0 << 6, $2D | 0 << 6 ;AF
	.BYTE $19 | 1 << 6, $1D | 1 << 6, $18 | 1 << 6, $1C | 1 << 6 ;B0
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $18 | 1 << 6, $1C | 1 << 6 ;B1
	.BYTE $2D | 0 << 6, $19 | 1 << 6, $2D | 0 << 6, $18 | 1 << 6 ;B2
	.BYTE $1F | 1 << 6, $2E | 0 << 6, $1E | 1 << 6, $2E | 0 << 6 ;B3
	.BYTE $2E | 0 << 6, $2D | 0 << 6, $1A | 1 << 6, $1C | 1 << 6 ;B4
	.BYTE $2D | 0 << 6, $2D | 0 << 6, $2D | 0 << 6, $18 | 1 << 6 ;B5
	.BYTE $2D | 0 << 6, $2D | 0 << 6, $1A | 1 << 6, $1C | 1 << 6 ;B6
	.BYTE $1F | 1 << 6, $2E | 0 << 6, $1A | 1 << 6, $1C | 1 << 6 ;B7
	.BYTE $2D | 0 << 6, $19 | 1 << 6, $1A | 1 << 6, $1C | 1 << 6 ;B8
	.BYTE $2D | 0 << 6, $20 | 1 << 6, $2D | 0 << 6, $20 | 1 << 6 ;B9
	.BYTE $21 | 1 << 6, $20 | 1 << 6, $2D | 0 << 6, $20 | 1 << 6 ;BA
	.BYTE $21 | 1 << 6, $21 | 1 << 6, $2D | 0 << 6, $2D | 0 << 6 ;BB
	.BYTE $2D | 0 << 6, $21 | 1 << 6, $2D | 0 << 6, $2D | 0 << 6 ;BC
	.BYTE $20 | 1 << 6, $01 | 2 << 6, $20 | 1 << 6, $01 | 2 << 6 ;BD
	.BYTE $00 | 0 << 6, $3C | 1 << 6, $00 | 0 << 6, $3C | 1 << 6 ;BE
	.BYTE $3C | 1 << 6, $3C | 1 << 6, $3C | 1 << 6, $3C | 1 << 6 ;BF
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $1E | 1 << 6, $2E | 0 << 6 ;C0
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $01 | 2 << 6, $01 | 2 << 6 ;C1
	.BYTE $01 | 2 << 6, $01 | 2 << 6, $1A | 1 << 6, $1C | 1 << 6 ;C2
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $2D | 0 << 6, $2D | 0 << 6 ;C3
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $28 | 2 << 6, $01 | 2 << 6 ;C4
	.BYTE $28 | 2 << 6, $01 | 2 << 6, $28 | 2 << 6, $01 | 2 << 6 ;C5
	.BYTE $2A | 0 << 6, $2A | 0 << 6, $2C | 0 << 6, $2C | 0 << 6 ;C6
	.BYTE $2A | 0 << 6, $2A | 0 << 6, $2B | 0 << 6, $2B | 0 << 6 ;C7
	.BYTE $2D | 0 << 6, $20 | 1 << 6, $1A | 1 << 6, $1E | 1 << 6 ;C8
	.BYTE $01 | 2 << 6, $19 | 1 << 6, $1A | 1 << 6, $1C | 1 << 6 ;C9
	.BYTE $2D | 0 << 6, $2D | 0 << 6, $00 | 0 << 6, $2D | 0 << 6 ;CA
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $2F | 3 << 6, $2F | 3 << 6 ;CB
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $21 | 1 << 6, $21 | 1 << 6 ;CC
	.BYTE $01 | 2 << 6, $2F | 3 << 6, $01 | 2 << 6, $2F | 3 << 6 ;CD
	.BYTE $01 | 2 << 6, $01 | 2 << 6, $01 | 2 << 6, $01 | 2 << 6 ;CE
	.BYTE $21 | 1 << 6, $21 | 1 << 6, $21 | 1 << 6, $21 | 1 << 6 ;CF
	.BYTE $21 | 1 << 6, $21 | 1 << 6, $2F | 3 << 6, $2F | 3 << 6 ;D0
	.BYTE $21 | 1 << 6, $21 | 1 << 6, $01 | 2 << 6, $29 | 2 << 6 ;D1
	.BYTE $21 | 1 << 6, $21 | 1 << 6, $00 | 2 << 6, $00 | 2 << 6 ;D2
	.BYTE $01 | 2 << 6, $2F | 3 << 6, $21 | 1 << 6, $21 | 1 << 6 ;D3
	.BYTE $01 | 2 << 6, $29 | 2 << 6, $21 | 1 << 6, $21 | 1 << 6 ;D4
	.BYTE $00 | 2 << 6, $00 | 2 << 6, $21 | 1 << 6, $21 | 1 << 6 ;D5
	.BYTE $21 | 1 << 6, $21 | 1 << 6, $2F | 3 << 6, $29 | 2 << 6 ;D6
	.BYTE $21 | 1 << 6, $21 | 1 << 6, $01 | 2 << 6, $2F | 3 << 6 ;D7
	.BYTE $2F | 3 << 6, $29 | 2 << 6, $2F | 3 << 6, $29 | 2 << 6 ;D8
	.BYTE $1F | 1 << 6, $00 | 0 << 6, $1E | 1 << 6, $08 | 0 << 6 ;D9
	.BYTE $01 | 2 << 6, $01 | 2 << 6, $01 | 2 << 6, $21 | 1 << 6 ;DA
	.BYTE $01 | 2 << 6, $01 | 2 << 6, $01 | 2 << 6, $2F | 3 << 6 ;DB
	.BYTE $01 | 2 << 6, $2F | 3 << 6, $01 | 2 << 6, $01 | 2 << 6 ;DC
	.BYTE $01 | 2 << 6, $29 | 2 << 6, $01 | 2 << 6, $29 | 2 << 6 ;DD
	.BYTE $28 | 2 << 6, $01 | 2 << 6, $18 | 1 << 6, $1C | 1 << 6 ;DE
	.BYTE $1F | 1 << 6, $01 | 2 << 6, $1E | 1 << 6, $01 | 2 << 6 ;DF
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $1A | 1 << 6, $1C | 1 << 6 ;E0
	.BYTE $19 | 1 << 6, $1D | 1 << 6, $18 | 1 << 6, $1C | 1 << 6 ;E1
	.BYTE $19 | 1 << 6, $1D | 1 << 6, $01 | 2 << 6, $2F | 3 << 6 ;E2
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $2F | 3 << 6, $2F | 3 << 6 ;E3
	.BYTE $2F | 3 << 6, $2F | 3 << 6, $1A | 1 << 6, $1C | 1 << 6 ;E4
	.BYTE $1F | 1 << 6, $2F | 3 << 6, $1E | 1 << 6, $2F | 3 << 6 ;E5
	.BYTE $1F | 1 << 6, $2F | 3 << 6, $2F | 3 << 6, $2F | 3 << 6 ;E6
	.BYTE $31 | 0 << 6, $33 | 0 << 6, $32 | 0 << 6, $34 | 0 << 6 ;E7
	.BYTE $01 | 2 << 6, $01 | 2 << 6, $1E | 1 << 6, $01 | 2 << 6 ;E8
	.BYTE $2F | 3 << 6, $01 | 2 << 6, $1A | 1 << 6, $1C | 1 << 6 ;E9
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $1E | 1 << 6, $2F | 3 << 6 ;EA
	.BYTE $1B | 1 << 6, $1F | 1 << 6, $2F | 3 << 6, $2F | 3 << 6 ;EB
	.BYTE $19 | 1 << 6, $1D | 1 << 6, $1A | 1 << 6, $1C | 1 << 6 ;EC
	.BYTE $2F | 3 << 6, $2F | 3 << 6, $01 | 2 << 6, $01 | 2 << 6 ;ED
	.BYTE $01 | 2 << 6, $01 | 2 << 6, $2F | 3 << 6, $2F | 3 << 6 ;EE
	.BYTE $2F | 3 << 6, $01 | 2 << 6, $2F | 3 << 6, $01 | 2 << 6 ;EF
	.BYTE $01 | 2 << 6, $01 | 2 << 6, $2F | 3 << 6, $01 | 2 << 6 ;F0
	.BYTE $1B | 1 << 6, $1F | 1 << 6, $1A | 1 << 6, $1E | 1 << 6 ;F1
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $01 | 2 << 6, $2F | 3 << 6 ;F2
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $1A | 1 << 6, $1E | 1 << 6 ;F3
	.BYTE $2F | 3 << 6, $01 | 2 << 6, $1E | 1 << 6, $2F | 3 << 6 ;F4
	.BYTE $01 | 2 << 6, $2F | 3 << 6, $2F | 3 << 6, $18 | 1 << 6 ;F5
	.BYTE $2F | 3 << 6, $19 | 1 << 6, $01 | 2 << 6, $2F | 3 << 6 ;F6
	.BYTE $2F | 3 << 6, $01 | 2 << 6, $01 | 2 << 6, $01 | 2 << 6 ;F7
	.BYTE $01 | 2 << 6, $19 | 1 << 6, $01 | 2 << 6, $18 | 1 << 6 ;F8
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $01 | 2 << 6, $20 | 1 << 6 ;F9
	.BYTE $01 | 2 << 6, $20 | 1 << 6, $01 | 2 << 6, $20 | 1 << 6 ;FA
	.BYTE $01 | 2 << 6, $01 | 2 << 6, $01 | 2 << 6, $18 | 1 << 6 ;FB
	.BYTE $2F | 3 << 6, $29 | 2 << 6, $21 | 1 << 6, $21 | 1 << 6 ;FC
	.BYTE $1B | 1 << 6, $1D | 1 << 6, $00 | 0 << 6, $00 | 0 << 6 ;FD
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $08 | 0 << 6, $08 | 0 << 6 ;FE
	.BYTE $00 | 0 << 6, $19 | 1 << 6, $08 | 0 << 6, $18 | 1 << 6 ;FF

;attributes
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;00
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;01
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;02
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;03
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;04
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;05
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;06
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;07
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;08
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;09
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;0A
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;0B
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;0C
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;0D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;0E
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;0F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;10
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;11
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;12
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;13
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;14
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;15
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;16
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_2 ;17
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;18
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;19
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;1A
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;1B
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;1C
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;1D
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;1E
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;1F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;20
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;21
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;22
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;23
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;24
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;25
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;26
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;27
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;28
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;29
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;2A
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;2B
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;2C
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;2D
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;2E
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_2 ;2F
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;30
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;31
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;32
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2 ;33
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;34
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;35
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;36
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;37
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;38
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;39
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;3A
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;3B
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;3C
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;3D
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;3E
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;3F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;40
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;41
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;42
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;43
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;44
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;45
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;46
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;47
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;48
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3 ;49
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;4A
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;4B
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;4C
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;4D
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;4E
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;4F
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;50
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;51
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;52
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;53
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;54
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;55
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;56
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2 ;57
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3 ;58
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;59
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3 ;5A
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;5B
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;5C
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;5D
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3 ;5E
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_3 ;5F
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0 ;60
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;61
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3 ;62
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;63
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;64
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3 ;65
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;66
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;67
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;68
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;69
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;6A
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2 ;6B
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_3 ;6C
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;6D
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;6E
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;6F
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;70
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;71
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;72
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3 ;73
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;74
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;75
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;76
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_3 ;77
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_0 ;78
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;79
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;7A
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;7B
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;7C
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;7D
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3 ;7E
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;7F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;80
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;81
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;82
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;83
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;84
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;85
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;86
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;87
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;88
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;89
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;8A
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;8B
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;8C
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;8D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;8E
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;8F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;90
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;91
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;92
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;93
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;94
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;95
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3 ;96
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1 ;97
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3 ;98
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;99
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3 ;9A
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2 ;9B
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;9C
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3 ;9D
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3 ;9E
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;9F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;A0
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;A1
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;A2
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;A3
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;A4
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;A5
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;A6
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;A7
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;A8
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3 ;A9
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;AA
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_1 ;AB
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;AC
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;AD
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3 ;AE
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;AF
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;B0
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;B1
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;B2
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3 ;B3
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_1 ;B4
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_1 ;B5
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_1 ;B6
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_1 ;B7
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;B8
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;B9
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;BA
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;BB
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;BC
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;BD
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;BE
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;BF
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_3 ;C0
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;C1
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;C2
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;C3
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;C4
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;C5
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;C6
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;C7
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;C8
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;C9
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;CA
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;CB
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;CC
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;CD
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;CE
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;CF
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;D0
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;D1
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;D2
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;D3
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;D4
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;D5
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;D6
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;D7
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;D8
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;D9
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_0 ;DA
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;DB
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;DC
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;DD
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;DE
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;DF
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;E0
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;E1
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;E2
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;E3
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;E4
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;E5
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;E6
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;E7
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;E8
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;E9
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_2 ;EA
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;EB
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;EC
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;ED
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;EE
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;EF
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;F0
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;F1
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;F2
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;F3
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;F4
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_0 ;F5
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;F6
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;F7
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;F8
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;F9
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;FA
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_0 ;FB
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;FC
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;FD
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;FE
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;FF
