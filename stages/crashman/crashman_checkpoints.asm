;crashman checkpoint ycoord
	checkpointycoord 11
	checkpointycoord 11
	checkpointycoord 7

;unused checkpoint ycoord
	checkpointycoord 11
	checkpointycoord 11
	checkpointycoord 11

;crashman checkpoint mapset
	.BYTE (mapset_crashman_00 - mapset_crashman_00) / $40
	.BYTE (mapset_crashman_07 - mapset_crashman_00) / $40
	.BYTE (mapset_crashman_12 - mapset_crashman_00) / $40

;unused checkpoint mapset
	.BYTE $FF
	.BYTE $00
	.BYTE $00

;crashman checkpoint enemies index
	.BYTE $00
	.BYTE $15
	.BYTE $22

;unused checkpoint enemies index
	.BYTE $22
	.BYTE $22
	.BYTE $22

;crashman checkpoint items index
	.BYTE $00
	.BYTE $00
	.BYTE $05

;unused checkpoint items index
	.BYTE $09
	.BYTE $09
	.BYTE $09

;crashman checkpoint hileft mapset load
	.HIBYTES mapset_crashman_00 - $20
	.HIBYTES mapset_crashman_07 - $20
	.HIBYTES mapset_crashman_12 - $20

;unused checkpoint hileft mapset load
	.HIBYTES mapset_crashman_00 - $20
	.HIBYTES mapset_crashman_00 - $20
	.HIBYTES mapset_crashman_00 - $20

;crashman checkpoint loleft mapset load
	.LOBYTES mapset_crashman_00 - $20
	.LOBYTES mapset_crashman_07 - $20
	.LOBYTES mapset_crashman_12 - $20

;unused checkpoint loleft mapset load
	.LOBYTES mapset_crashman_00 - $20
	.LOBYTES mapset_crashman_00 - $20
	.LOBYTES mapset_crashman_00 - $20

;crashman checkpoint hiright mapset load
	.HIBYTES mapset_crashman_01 + $20
	.HIBYTES mapset_crashman_08 + $20
	.HIBYTES mapset_crashman_13 + $20

;unused checkpoint hiright mapset load
	.HIBYTES mapset_crashman_01 + $20
	.HIBYTES mapset_crashman_01 + $20
	.HIBYTES mapset_crashman_01 + $20

;crashman checkpoint loright mapset load
	.LOBYTES mapset_crashman_01 + $20
	.LOBYTES mapset_crashman_08 + $20
	.LOBYTES mapset_crashman_13 + $20

;unused checkpoint loright mapset load
	.LOBYTES mapset_crashman_01 + $20
	.LOBYTES mapset_crashman_01 + $20
	.LOBYTES mapset_crashman_01 + $20

;crashman checkpoint scrolling index
	.BYTE scrolling_crashman_00 - scrolling_crashman_00
	.BYTE scrolling_crashman_01 - scrolling_crashman_00
	.BYTE scrolling_crashman_02 - scrolling_crashman_00

;unused checkpoint scrolling index
	.BYTE scrolling_crashman_03 - scrolling_crashman_00
	.BYTE scrolling_crashman_04 - scrolling_crashman_00
	.BYTE scrolling_crashman_05 - scrolling_crashman_00

;crashman checkpoint start scrolling mapset, see `stages_name`_scrolling.asm
	.BYTE $00
	.BYTE $07
	.BYTE $12

;unused checkpoint start scrolling mapset
	.BYTE $00
	.BYTE $00
	.BYTE $00

;crashman checkpoint end scrolling mapset
	.BYTE $00
	.BYTE $08
	.BYTE $12

;unused checkpoint end scrolling mapset
	.BYTE $00
	.BYTE $00
	.BYTE $00

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
