;woodman checkpoint ycoord
	checkpointycoord 11
	checkpointycoord 5
	checkpointycoord 7

;wily3 checkpoint ycoord
	checkpointycoord 9
	checkpointycoord 8
	checkpointycoord 8

;woodman checkpoint mapset
	.BYTE (mapset_wood_wily3_00 - mapset_wood_wily3_00) / $40
	.BYTE (mapset_wood_wily3_09 - mapset_wood_wily3_00) / $40
	.BYTE (mapset_wood_wily3_16 - mapset_wood_wily3_00) / $40

;wily3 checkpoint mapset
	.BYTE (mapset_wood_wily3_18 - mapset_wood_wily3_00) / $40
	.BYTE (mapset_wood_wily3_22 - mapset_wood_wily3_00) / $40
	.BYTE (mapset_wood_wily3_22 - mapset_wood_wily3_00) / $40

;woodman checkpoint enemies index
	.BYTE $00
	.BYTE $13
	.BYTE $24

;wily3 checkpoint enemies index
	.BYTE $24
	.BYTE $27
	.BYTE $27

;woodman checkpoint items index
	.BYTE $00
	.BYTE $06
	.BYTE $08

;wily3 checkpoint items index
	.BYTE $0C
	.BYTE $14
	.BYTE $14

;woodman checkpoint hileft mapset load
	.HIBYTES mapset_wood_wily3_00 - $20
	.HIBYTES mapset_wood_wily3_09 - $20
	.HIBYTES mapset_wood_wily3_16 - $20

;wily3 checkpoint hileft mapset load
	.HIBYTES mapset_wood_wily3_18 - $20
	.HIBYTES mapset_wood_wily3_22 - $20
	.HIBYTES mapset_wood_wily3_22 - $20

;woodman checkpoint loleft mapset load
	.LOBYTES mapset_wood_wily3_00 - $20
	.LOBYTES mapset_wood_wily3_09 - $20
	.LOBYTES mapset_wood_wily3_16 - $20

;wily3 checkpoint loleft mapset load
	.LOBYTES mapset_wood_wily3_18 - $20
	.LOBYTES mapset_wood_wily3_22 - $20
	.LOBYTES mapset_wood_wily3_22 - $20

;woodman checkpoint hiright mapset load
	.HIBYTES mapset_wood_wily3_01 + $20
	.HIBYTES mapset_wood_wily3_0a + $20
	.HIBYTES mapset_wood_wily3_17 + $20

;wily3 checkpoint hiright mapset load
	.HIBYTES mapset_wood_wily3_19 + $20
	.HIBYTES mapset_wood_wily3_23 + $20
	.HIBYTES mapset_wood_wily3_23 + $20

;woodman checkpoint loright mapset load
	.LOBYTES mapset_wood_wily3_01 + $20
	.LOBYTES mapset_wood_wily3_0a + $20
	.LOBYTES mapset_wood_wily3_17 + $20

;wily3 checkpoint loright mapset load
	.LOBYTES mapset_wood_wily3_19 + $20
	.LOBYTES mapset_wood_wily3_23 + $20
	.LOBYTES mapset_wood_wily3_23 + $20

;woodman checkpoint scrolling index
	.BYTE $00
	.BYTE $05
	.BYTE $0C

;wily3 checkpoint scrolling index
	.BYTE $0E
	.BYTE $14
	.BYTE $14

;woodman checkpoint start scrolling mapset
	.BYTE $00
	.BYTE $09
	.BYTE $16

;wily3 checkpoint start scrolling mapset
	.BYTE $18
	.BYTE $22
	.BYTE $22

;woodman checkpoint end scrolling mapset
	.BYTE $04
	.BYTE $09
	.BYTE $16

;wily3 checkpoint end scrolling mapset
	.BYTE $18
	.BYTE $22
	.BYTE $22

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF
