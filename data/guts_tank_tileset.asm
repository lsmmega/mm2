guts_tank_ppu_hi_address:
	hileftscreencoord 7, 6
	hileftscreencoord 6, 7
	hileftscreencoord 14, 7
	hileftscreencoord 6, 8
	hileftscreencoord 6, 9
	hileftscreencoord 4, 10
	hileftscreencoord 4, 11
	hileftscreencoord 5, 12
	hileftscreencoord 5, 13
	hileftscreencoord 5, 14
	hileftscreencoord 6, 15

guts_tank_ppu_lo_address:
	loleftscreencoord 7, 6
	loleftscreencoord 6, 7
	loleftscreencoord 14, 7
	loleftscreencoord 6, 8
	loleftscreencoord 6, 9
	loleftscreencoord 4, 10
	loleftscreencoord 4, 11
	loleftscreencoord 5, 12
	loleftscreencoord 5, 13
	loleftscreencoord 5, 14
	loleftscreencoord 6, 15

guts_tank_draw_length:
	.BYTE $03
	.BYTE $05
	.BYTE $02
	.BYTE $0A
	.BYTE $0A
	.BYTE $0D
	.BYTE $0F
	.BYTE $0E
	.BYTE $0E
	.BYTE $0F
	.BYTE $0E

guts_tank_lower_tileset:
;1
	.BYTE $00, $00, $00, $00, $00, $00, $83, $84
	.BYTE $85, $86, $87, $88, $89, $8A, $8B, $8C
	.BYTE $8D, $8D, $8D, $8E, $00, $00

;2
	.BYTE $00, $00, $00, $00, $00, $00, $8F, $90
	.BYTE $91, $92, $93, $94, $95, $96, $97, $98
	.BYTE $98, $99, $9A, $9B, $00, $00

;3
	.BYTE $9C, $9D, $9E, $9F, $A0, $A1, $A2, $A3
	.BYTE $A2, $A3, $A2, $A3, $A2, $A3, $A2, $A3
	.BYTE $A2, $A4, $A5, $A6, $A7, $00

;4
	.BYTE $A8, $A9, $AA, $AB, $AC, $AD, $AE, $AF
	.BYTE $AE, $AF, $AE, $AF, $AE, $AF, $AE, $AF
	.BYTE $AE, $B0, $B1, $B2, $B3, $B4

;5
	.BYTE $B5, $B6, $B7, $B8, $B9, $BA, $BB, $BC
	.BYTE $BD, $BA, $BB, $BC, $BD, $BA, $BB, $BC
	.BYTE $BD, $BA, $BB, $BC, $BE, $BF

;6
	.BYTE $C0, $C1, $C2, $C3, $C4, $C5, $C6, $C7
	.BYTE $C8, $C5, $C6, $C7, $C8, $C5, $C6, $C7
	.BYTE $C8, $C5, $C6, $C7, $C9, $CA

;7
	.BYTE $CB, $CC, $CD, $CE, $CF, $D0, $D1, $D2
	.BYTE $D3, $D0, $D1, $D2, $D3, $D0, $D1, $D2
	.BYTE $D3, $D0, $D1, $D2, $D4, $D5

;8
	.BYTE $D6, $D7, $D8, $D9, $DA, $DB, $DC, $DD
	.BYTE $DE, $DF, $DC, $DD, $DE, $DF, $DC, $DD
	.BYTE $DE, $DF, $DC, $DD, $E0, $E1

guts_tank_attributes:
;1
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_0
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3

;2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3

;3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_1
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3

;4
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3

;5
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2
